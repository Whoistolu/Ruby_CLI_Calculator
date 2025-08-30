# Ruby CLI Calculator

A simple command-line calculator application written in Ruby.  
This app allows you to perform basic arithmetic operations such as addition, subtraction, multiplication, and division by entering expressions in the terminal.

I built this project to brush up my Ruby skills and Test Drivin Development Approach(TDD)

## Features

- Addition, subtraction, multiplication, and division
- Handles division by zero with an error message
- Simple and easy-to-use command-line interface

## Requirements

- Ruby (tested with Ruby 3+ and above)

## Installation

Clone the repository or download the source files to your local machine.

## Usage

Run the calculator by executing the `run.rb` file:

```bash
ruby run.rb
```

You will be prompted to enter an expression in the format:

```
<number1> <operator> <number2>
```

Example:

```
2 + 3
7 / 2
-4 * 8
```

The calculator will then display the result of the operation.

## Error Handling

- Division by zero will raise an error and terminate the program with a message.

## Testing

RSpec tests are included to verify the calculator's functionality.

To run the tests, execute:

```bash
rspec
```


