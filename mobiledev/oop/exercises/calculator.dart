import 'dart:io';

enum Operation { add, subtract, divide, multiply }

class Calculator {
  int? firstInput;
  int? secondInput;
  Operation? op;

  Calculator();

  void calculate() {
    if (firstInput == null || secondInput == null || op == null) {
      print("Error: Missing inputs or operation.");
      return;
    }
    num result; 
    switch (op) {
      case Operation.add:
        result = firstInput! + secondInput!;
        break;
      case Operation.subtract:
        result = firstInput! - secondInput!;
        break;
      case Operation.multiply:
        result = firstInput! * secondInput!;
        break;
      case Operation.divide:
        if (secondInput == 0) {
          print("Error: Division by zero is not allowed.");
          return;
        }
        result = firstInput! / secondInput!;
        break;
      default:
        print("Error: Invalid operation.");
        return;
    }
    print("Result: $result");
  }

  void setInputs(int first, int second, Operation operation) {
    firstInput = first;
    secondInput = second;
    op = operation;
  }

  void reset() => firstInput = secondInput = op = null;

  
}

void interface(){
 Calculator calculator = Calculator();

  while (true) {
    print("""
Simple Calculator:
1. Add
2. Subtract
3. Multiply
4. Divide
5. Reset
6. Exit
""");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '6') {
      print("Exiting...");
      break;
    }

    if (choice == '5') {
      calculator.reset();
      print("Calculator reset!");
      continue;
    }

    stdout.write("Enter first number: ");
    int firstNum = int.parse(stdin.readLineSync()!);
    stdout.write("Enter second number: ");
    int secondNum = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case '1':
        calculator.setInputs(firstNum, secondNum, Operation.add);
        break;
      case '2':
        calculator.setInputs(firstNum, secondNum, Operation.subtract);
        break;
      case '3':
        calculator.setInputs(firstNum, secondNum, Operation.multiply);
        break;
      case '4':
        calculator.setInputs(firstNum, secondNum, Operation.divide);
        break;
      default:
        print("Invalid choice. Please try again.");
        continue;
    }

    calculator.calculate();
  } 
}

void main() {
interface();
}
