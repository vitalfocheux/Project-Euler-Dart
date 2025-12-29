import 'package:root_utils/root_utils.dart';

void main(){
  print(summationOfPrimes(10));
  print(summationOfPrimes(2000000));
}

int summationOfPrimes(int n){
  int r = 0;
  for(int i = 0; i <= n; i++){
    if(i.isPrime()){
      r += i;
    }
  }
  return r;
}