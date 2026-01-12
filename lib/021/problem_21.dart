import 'package:root_utils/root_utils.dart';

void main(){
  print(amicableNumber(220, 284));
  print(sumAmicableNumbersUnderOf(10000));
}

bool amicableNumber(int a, int b){
  if(a == b) return false;
  return d(a) == b && d(b) == a;
}

int d(int n){
  return n.getDivisors().sum() - n;
}

int sumAmicableNumbersUnderOf(int n){
  Set<int> sum = {};
  for(int a = 1; a < n; a++){
    int b = d(a);
    if(amicableNumber(a, b)){
      sum.addAll({a,b});
    } 
  }
  return sum.toList().sum();
}