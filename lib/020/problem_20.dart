import 'package:root_utils/root_utils.dart';

void main(){
  print(factorialDigitSum(10));
  print(factorialDigitSum(100));
}

int factorialDigitSum(int n){
  return factorialBig(n).toString().findDigitList().sum();
}