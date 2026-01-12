import 'package:root_utils/root_utils.dart';

void main(){
  print(doubleBasePalindromes(585, 2));
  print(sumAllNumbersLessThanXWichArePalindromicInBaseB1AndB2(1000000));
}

bool doubleBasePalindromes(int b1, int b2){
  return b1.isPalindrome() && b1.toRadixString(b2).isPalindrome();
}

int sumAllNumbersLessThanXWichArePalindromicInBaseB1AndB2(int x){
  Set<int> sum = {};
  for(int i = 0; i < x; i++){
    if(doubleBasePalindromes(i, 2)){
      sum.add(i);
    }
  }
  return sum.toList().sum();
}