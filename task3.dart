import 'dart:io';

void main() {
  // Step 1: Take input for the number of rows (n)
  print('Enter the number of rows for the pyramid:');
  int n = int.parse(stdin.readLineSync()!);

  // Step 2: Loop to print the pyramid
  for (int i = 1; i <= n; i++) {
    // Inner loop to print numbers from 1 to i
    for (int j = 1; j <= i; j++) {
      stdout.write('$j ');  // Print numbers in the same row
    }
    print('');  // Move to the next line after each row
  }
}
