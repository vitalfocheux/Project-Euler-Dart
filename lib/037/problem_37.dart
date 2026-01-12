import 'package:root_utils/root_utils.dart';

void main(){
  print(truncatablePrimes(3797));
  print(sumOnlyElevenPrimesTruncable());
}

bool truncatablePrimes(int n){
  if(!n.isPrime() || n.length == 1) return false;
  return truncatablePrimesLeftToRight(n) && truncatablePrimesRightToLeft(n);
}

bool truncatablePrimesRightToLeft(int n){
  if(n.length == 1) return n.isPrime();
  String truncated = n.toString().substring(0, n.length - 1);
  if(truncated.isEmpty) return false;
  int nextNum = truncated.toInt();
  return nextNum.isPrime() && truncatablePrimesRightToLeft(nextNum);
}

bool truncatablePrimesLeftToRight(int n){
  if(n.length == 1) return n.isPrime();
  String truncated = n.toString().substring(1, n.length);
  if(truncated.isEmpty) return false;
  int nextNum = truncated.toInt();
  return nextNum.isPrime() && truncatablePrimesLeftToRight(nextNum);
}

int sumOnlyElevenPrimesTruncable(){
  Set<int> sum = {};
  int i = 2;
  while(sum.length != 11){
    if(truncatablePrimes(i)) sum.add(i);
    i++;
  }
  return sum.toList().sum();
}