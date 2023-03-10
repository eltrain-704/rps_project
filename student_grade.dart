import 'dart:io';

void main() {
  // var studentGrade = 47;
  // var studentGrade = 82;
  // var studentGrade = 90;
  // var studentGrade = 60;
  var studentGrade = 50;
  num passGrade = 60;
  int averageGrade = 50;
  var studentPass = studentGrade > averageGrade && studentGrade >= passGrade;

  if (studentPass) {
    print('Agba Scholar');
  } else {
    print('Olodo, do better');
  }
}
