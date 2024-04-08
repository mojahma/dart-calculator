// Importing the dart:io library for input/output operations

import 'dart:io'; 

void main()
 {
  // Greeting message
  print('Welcome to the Dart Console Calculator!\n'); 
  // Main loop to keep the calculator running until the user chooses to exit
    
  while (true)
   { 
    // Display menu options
    print('Choose an operation:');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Exit');

    // Take user input
    stdout.write('\nEnter your choice: ');
    // Read user input
    String? choice = stdin.readLineSync(); 

    // Perform operation based on user choice
    switch (choice) {
      case '1':
        performOperation('+'); // Addition
        break;
      case '2':
        performOperation('-'); // Subtraction
        break;
      case '3':
        performOperation('*'); // Multiplication
        break;
      case '4':
        performOperation('/'); // Division
        break;
      case '5':
        print('Exiting...'); // Exit the program
        return;
      default:
        print('Invalid choice. Please choose a number between 1 and 5.'); // Error message for invalid input
    }
  }
}

void performOperation(String operation) {
  stdout.write('Enter the first number: ');
  double? num1 = double.tryParse(stdin.readLineSync()!); // Read the first number

  stdout.write('Enter the second number: ');
  double? num2 = double.tryParse(stdin.readLineSync()!); // Read the second number

  double result;
  switch (operation) { // Perform the operation based on the input operation
    case '+':
      result = num1! + num2!; // Addition
      print('Result: $num1 $operation $num2 = $result');
      break;
    case '-':
      result = num1! - num2!; // Subtraction
      print('Result: $num1 $operation $num2 = $result');
      break;
    case '*':
      result = num1! * num2!; // Multiplication
      print('Result: $num1 $operation $num2 = $result');
      break;
    case '/':
      if (num2 == 0) {
        print('Error: Division by zero'); // Division by zero error handling
      } else {
        result = num1! / num2!; // Division
        print('Result: $num1 $operation $num2 = $result');
      }
      break;
    default:
      print('Invalid operation'); // Error message for invalid operation
  }
}
