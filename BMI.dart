import 'dart:io';

void main() {
  print('=== BMI Calculator ===');
  //Get weight from user
  stdout.write('Enter your weight (kg): ');
  double weight = double.parse(stdin.readLineSync()!);
  //Get height from user
  stdout.write('Enter your height (cm): ');
  double heightCm = double.parse(stdin.readLineSync()!);
  double height = heightCm / 100;

  double bmi = calculateBMI(weight, height);

  print('Your BMI = ${bmi.toStringAsFixed(2)}');
  print('Category: ${bmiCategory(bmi)}');
}

//calculate BMI
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

//category part
String bmiCategory(double bmi) {
  if (bmi < 18.5) return 'Underweight';
  if (bmi < 25) return 'Normal';
  if (bmi < 30) return 'Overweight';
  return 'Obese';
}
