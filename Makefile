install-databrickscli:
	curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sudo sh

install-pipx:
	sudo apt update -y
	sudo apt install -y pipx
	pipx ensurepath

dependencies-cicd:
	# you have to make install-pipx first (it manipulates path so have to be separated)
	pipx install poetry==1.8.2

	# requirements installation
	pip install -r requirements-ci.txt
	pip install -e .

generate-requirements:
	poetry update
	poetry export -f requirements.txt --output requirements-ci.txt --with ci
	poetry export -f requirements.txt --output requirements.txt


generate-load-resources:
	python delta/gen_asset_bundle.py --catalog $(CATALOG) --type load --timeout $(TIMEOUT) -succ_email $(SUCC_EMAIL) -fail_email $(FAIL_EMAIL)
	python delta/gen_pipeline.py --pipeline_type load -succ_email $(SUCC_EMAIL) -fail_email $(FAIL_EMAIL)
	databricks bundle validate -t $(LOCATION) --var="catalog=$(CATALOG)" --var="dwh_bd=$(DWH_BD)"

generate-deploy-resources:
	python delta/gen_asset_bundle.py --catalog $(CATALOG) --type $(TYPE) -succ_email $(SUCC_EMAIL) -fail_email $(FAIL_EMAIL)
	python delta/gen_pipeline.py --pipeline_type $(TYPE) -succ_email $(SUCC_EMAIL) -fail_email $(FAIL_EMAIL)
	databricks bundle validate -t $(LOCATION) --var="catalog=$(CATALOG)" --var="last_deployment_tag=$(LAST_DEPLOYMENT_TAG)"

.PHONY: install-databrickscli install-pipx dependencies-cicd generate-requirements generate-load-resources generate-deploy-resources
