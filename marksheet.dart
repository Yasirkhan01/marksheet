import 'dart:io';

void main() {
  print('MARKSHEET');
  var marks = markSheet();
}

promptUser(prompt) {
  stdout.write("$prompt ");
  return int.parse(stdin.readLineSync()!);
}

promptUserString(prompt) {
  stdout.write("$prompt ");
  return stdin.readLineSync()!;
}

num markSheet() {
  var sudentName = promptUserString('Student Name is ');
  var rollNum = promptUser('Student Roll Number is ');
  var chem = promptUser('Chemistry obtain marks');
  var math = promptUser('Mathematics obtain marks');
  var eng = promptUser('English obtain marks');
  var urdu = promptUser('Urdu obtain marks');
  var comp = promptUser('Computer obtain marks');
  var sum = chem + math + eng + urdu + comp;
  print('Your total obtain marks is $sum');
  var grade = (sum / 500) * 100;
  if (sum > 500) {
    print('Enter proper marks');
  }
  else if (grade >= 80) {
    print('You got A+ grade & total obtain marks is $sum out of 500');
  } else if (grade >= 70 || grade < 80) {
    print('You got A grade & total obtain marks is $sum out of 500');
  } else if (grade >= 60 || grade < 70) {
    print('You got B grade & total obtain marks is $sum out of 500');
  } else if (grade >= 50 || grade < 60) {
    print('You got C grade & total obtain marks is $sum out of 500');
  } else if (grade >= 40 || grade < 50) {
    print('You got D grade & total obtain marks is $sum out of 500');
  } 
  else {
    print('You are fail in Exam but not in Life , Keep trying with more effort');
  }
  return grade;
}
