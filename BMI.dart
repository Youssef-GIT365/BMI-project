import 'dart:io';

void main() {
  print('=== BMI Calculator ===');

  // Get weight from user
  stdout.write('Enter your weight (kg): ');
  double weight = double.parse(stdin.readLineSync()!);

  // Get height from user
  stdout.write('Enter your height (cm): ');
  double heightCm = double.parse(stdin.readLineSync()!);
  double height = heightCm / 100;

  // calculate BMI
  double bmi = weight / (height * height);

  print('Your BMI = ${bmi.toStringAsFixed(2)}');

  // category part
  String category;
  if (bmi < 18.5) {
    category = 'Underweight';
  } else if (bmi < 25) {
    category = 'Normal';
  } else if (bmi < 30) {
    category = 'Overweight';
  } else {
    category = 'Obese';
  }

  print('Category: $category');
}
