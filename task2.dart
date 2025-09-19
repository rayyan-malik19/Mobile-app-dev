import 'dart:io';

void main() {
  // Step 1: Input name and age
  print('Enter your name:');
  String name = stdin.readLineSync()!;

  print('Enter your age:');
  int age = int.parse(stdin.readLineSync()!);

  // Check eligibility based on age
  if (age < 18) {
    print('Sorry $name, you are not eligible to register.');
    return; // End the program if age is less than 18
  }

  // Step 2: Ask how many numbers the user wants to enter
  print('How many numbers do you want to enter?');
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  int sumEven = 0;
  int sumOdd = 0;
  int largestNumber = -1;  // Initializing with a very small value.
  int smallestNumber = 1000000;  // Initializing with a very large value.

  // Step 3: Take N numbers as input and store them in the list
  for (int i = 0; i < n; i++) {
    print('Enter number ${i + 1}:');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);

    // Sum of even and odd numbers
    if (num % 2 == 0) {
      sumEven += num;
    } else {
      sumOdd += num;
    }

    // Find the largest and smallest number
    if (num > largestNumber) {
      largestNumber = num;
    }

    if (num < smallestNumber) {
      smallestNumber = num;
    }
  }

  // Step 4: Print the results
  print('\nResults:');
  print('Sum of even numbers: $sumEven');
  print('Sum of odd numbers: $sumOdd');
  print('Largest number entered: $largestNumber');
  print('Smallest number entered: $smallestNumber');
}
