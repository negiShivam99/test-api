# dpl-pre-stage-dab

### Projects in dl-pre-stage-dab
Expand to view all objects related to specific projects.
<details>
  <summary>1.Experian</summary>
  
   - affordability_loans
   - credit_loans
   - edq_loans_transunion
   - emailage_loans_pre
   - emailage_loans_post
   - emailage_V2_loans
   - pns_loans_pre
   - pns_loans_post
   - pns_savings
   - pns_V2_loans
   
</details>

<details>
  <summary>2.Goddex</summary>

   - loans_engine1
   - loans_engine10
   - loans_engine11
   - loans_engine13
   - loans_engine18

</details>

<details>
  <summary>3.ADP</summary>
  
   - response_loans
   - response_savings
   - response_iasa
   - response_loans_2020
   - response_loans_2021
   - response_loans_2022
   - response_savings_2020
   - response_savings_2021
   - response_savings_2022

</details>

<details>
  <summary>4.Mambu</summary>

   - mambu_amf
   - mambu_ccb
   - mambu_mcb
   - mambu_manual

</details>

<details>
  <summary>5.Accountscore</summary>

   - rawresponse_loans

</details>

<details>
  <summary>6.Salesforce</summary>

  - a_l_contact
  - account_flag
  - address_details
  - assets_and_liabilities
  - assets_and_liabilities__histories
  - bank_details
  - cases
  - case_histories
  - contacts
  - credit_card_account
  - credit_card_application
  - direct_debit_day_change
  - email_messages
  - employment_details
  - income_source
  - income_validation
  - instant_access_savings_account
  - integration_information
  - ipp_audit
  - neilon__file
  - offer
  - payment
  - payslip_calculator_audit
  - savings_application
  - settlement_quote
  - tasks
  - task_and_automated_rules__histories
  - task_and_automated_rules
  - task_relations
  - users
  - verification_check
  - customer_activity
  - credit_card_application__histories
</details>

<details>
  <summary>6.GBG</summary>

   - idv_loans
</details>

<details>
  <summary>7.Equifax</summary>

   - webhook_bank_verification_loans
   - webhook_enhanced_ob_loans
   - webhook_income_ob_loans
</details>

<details>
    <summary>8.RDS Replication</summary>

   - culoansportal_account_application_extension
   - culoansportal_account_application_quote_clicks
   - culoansportal_account_application_quote
   - culoansportal_account_application_request_response
   - culoansportal_account_application
   - culoansportal_aggr_fee
   - culoansportal_aggr_master
   - culoansportal_baseline_price
   - culoansportal_basic_company_data
   - culoansportal_company_house
   - culoansportal_cross_core_emailage
   - culoansportal_cross_corepns
   - culoansportal_edqresponse
   - culoansportal_experion_bwa
   - culoansportal_id3global_data
   - culoansportal_identity
   - culoansportal_iovation_data
   - culoansportal_key_value_generic
   - culoansportal_loan_offer_token
   - culoansportal_loan_product_master_data
   - culoansportal_master_data
   - culoansportal_modulr_loan_collections
   - culoansportal_modulr_mandate_details
   - culoansportal_modulr_payment_details
   - culoansportal_offers
   - culoansportal_repayments
   - culoansportal_savings_product
</details>

<details>
  <summary>9.Salesforce Marketing Cloud</summary>

  - Sent
  - Journey
  - SendLog
  - Custom_NotSent_Error_Log
  - SMS_Message_Tracking
  - NotSent
  - Opens
  - SpamComplaints
  - Clicks
  - Bounces
  - EmailMessage_ID
  - SendJobs
  - Unsubs
  - StatusChange
  - Clicks_LinkContent
  - JourneyActivity
</details>

<details>
  <summary>10.Clearscore Clickshare</summary>

   - MCF_pricing_data
</details>


<details>
  <summary>11.ARO Finance</summary>

  - Decline Panel
  - Lender Offer Ranking MCF
</details>

## DEV
Move to projects <project-name>:
```sh
cd <project-name>
```

**Validate**
```sh
databricks bundle validate -t dev
```

**Deploy**
```sh
databricks bundle deploy -t dev
```

## UAT
Move to projects <project-name>:
```sh
cd <project-name>
```

**Validate**
```sh
databricks bundle validate -t uat
```

**Deploy**
```sh
databricks bundle deploy -t uat
```

## PROD
Move to projects <project-name>:
```sh
cd <project-name>
```

**Validate**
```sh
databricks bundle validate -t prod
```

**Deploy**
```sh
databricks bundle deploy -t prod
```