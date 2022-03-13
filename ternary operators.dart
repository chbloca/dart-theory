// ternary operator

void main() {
  printOddEven(3);
  printOddEven(6);
}

void printOddEven(int value){
  final type = (value % 2 == 0) ? 'even' : 'odd'; // condition ? exprT : exprF
  print('$value is $type');
  
  /*
  if (value % 2 == 0){
    print('$value is even');
  } else {
    print('$value is odd');
  }
  */
}