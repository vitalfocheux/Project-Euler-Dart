import 'package:root_utils/root_utils.dart';

void main(){
  print(nthPrime(6));      // 13
  print(nthPrime(10001));  // ?
}

int nthPrime(int n){
  int count = 0;
  int num = 2;
  while(count < n){
    if(num.isPrime()){
      count++;
      if(count == n){
        return num;
      }
    }
    num++;
  }
  return 0;
}
