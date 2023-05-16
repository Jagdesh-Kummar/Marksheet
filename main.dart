import 'dart:io';

class Marksheet {
  String studentName;
  String rollNumber;
  int englishMarks;
  int mathMarks;
  int scienceMarks;

  Marksheet(
      {required this.studentName,
      required this.rollNumber,
      required this.englishMarks,
      required this.mathMarks,
      required this.scienceMarks});

  double calculatePercentage() {
    int totalMarks = englishMarks + mathMarks + scienceMarks;
    return (totalMarks / 300) * 100;
  }

  String calculateGrade() {
    double percentage = calculatePercentage();
    if (percentage >= 90) {
      return 'A';
    } else if (percentage >= 80) {
      return 'B';
    } else if (percentage >= 70) {
      return 'C';
    } else if (percentage >= 60) {
      return 'D';
    } else {
      return 'F';
    }
  }

  void displayMarksheet() {
    print('-----------------------------------------');
    print('            MARKSHEET                     ');
    print('-----------------------------------------');
    print('Name: $studentName');
    print('Roll Number: $rollNumber');
    print('-----------------------------------------');
    print('Subject         Marks');
    print('-----------------------------------------');
    print('English         $englishMarks');
    print('Math            $mathMarks');
    print('Science         $scienceMarks');
    print('-----------------------------------------');
    print('Total Marks:     ${englishMarks + mathMarks + scienceMarks}');
    print('Percentage:      ${calculatePercentage().toStringAsFixed(2)}%');
    print('Grade:           ${calculateGrade()}');
    print('-----------------------------------------');
  }
}

void main() {
  print('Enter student details:');
  print('Student Name: ');
  String studentName = stdin.readLineSync()!;
  print('Roll Number: ');
  String rollNumber = stdin.readLineSync()!;
  print('English Marks: ');
  int englishMarks = int.parse(stdin.readLineSync()!);
  print('Math Marks: ');
  int mathMarks = int.parse(stdin.readLineSync()!);
  print('Science Marks: ');
  int scienceMarks = int.parse(stdin.readLineSync()!);

  Marksheet marksheet = Marksheet(
      studentName: studentName,
      rollNumber: rollNumber,
      englishMarks: englishMarks,
      mathMarks: mathMarks,
      scienceMarks: scienceMarks);

  marksheet.displayMarksheet();
}
