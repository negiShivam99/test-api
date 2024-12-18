import argparse


def calculate_sum(first_number, second_number):
    """
    Returns the sum of two numbers.

    Args:
        first_number (float): The first number.
        second_number (float): The second number.

    Returns:
        float: The sum of the two numbers.
    """
    return first_number + second_number


def main():
    # Create an ArgumentParser object
    parser = argparse.ArgumentParser(description="Calculate the sum of two numbers.")

    # Add arguments for the two numbers
    parser.add_argument(
        "--first_number",
        type=float,
        help="The first number."
    )
    parser.add_argument(
        "--second_number",
        type=float,
        help="The second number."
    )

    # Parse the command-line arguments
    args = parser.parse_args()

    # Calculate the sum
    result = calculate_sum(args.first_number, args.second_number)

    # Print the result
    print(f"The sum of {args.first_number} and {args.second_number} is {result}.")


if __name__ == "__main__":
    main()
