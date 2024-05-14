void main() {
  /// Q1: Complete program calculate

  ///  input number 1  & number 2
  ///  (n1 & n2 : int or double  )
  ///
  /// ♦️ check n1 &  n2  if null output 'enter number   Try agin'
  /// ♦️ check n1 &  n2  if not number  output 'error n1 or n2 just number, try agin'
  ///
  /// input operator ( + - * / %  )
  /// ♦️ check operator if null output 'enter operator  Try agin'
  ///
  ///
  /// create single   method calculate
  /// 1 - 3 parameter (n1 ,n2 ,op)
  /// return result ;
  ///
  ///  output : ' 7 - 3 = 4 '
  ///


  /// solution
  import 'dart:io';

void main() {
  stdout.write('type number first number');
  String? number1 = stdin.readLineSync();
  stdout.write('type number secoand number');
  String? number2 = stdin.readLineSync();
  stdout.write('enter the opertion');
  String? opertor = stdin.readLineSync();
  if ((number1 != null && number1.isNotEmpty) &&
      (number2 != null && number2.isNotEmpty)) {
    if (opertor != null && opertor.isNotEmpty) {
      num? n1 = (int.tryParse(number1)) ?? (double.tryParse(number1));
      num? n2 = (int.tryParse(number2)) ?? (double.tryParse(number2));
      if (n1 != null && n2 != null) {
        num result = calculate(n1, n2, opertor);
        print('$n1 $opertor $n2 =$result');
      }
    } else {
      print('shoulde type opertor');
    }
  } else {
    print("shaould type number 1 and number2");
  }
}
/// هون طلع عندي مشكله طالب فيها انو ممكن تكون null
  ///  لما حطيت ؟ 
  /// راحت بس شفت الفيديو بالحل ما طلع عندك مشاكل وماحطيت انت ؟
  ///the body might complete normally , causing 'null' to be returned,but the return type ,'num', ia a potentially non-nullable type .try adding eighter a return or a throw statment at the end
num calculate(num n1, num n2, String op) {
  switch (op) {
    case '+':
      return n1 + n2;
    case '-':
      return n1 - n2;
    case '*':
      return n1 * n2;
    case '/':
      return n1 / n2;
    case '%':
      return n1 % n2;
  }
}

}
