void main() {
  final values = [1, 2, 3, 4];
  print(sum(values));
}

int sum(List<int> values){
  int result = 0;
  
  // a closure is a function without a name
  // fold is functional operator
  
  return values.fold(0, (result, value) => result + value);
  
  /*
  for(int value in values){
    result += value;
  }
  */
  /*
  for(int i = 0; i < values.length; i++){
    result += values[i];
  }
  */
  return result;  
}

/* while loop
int sum(List<int> values){
  int i = 0;
  int result = 0;
  while(i < values.length){
    result += values[i];
    i++;
  }
  return result;  
}
*/