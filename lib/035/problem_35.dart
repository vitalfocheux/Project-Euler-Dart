import 'package:root_utils/root_utils.dart';

void main(){
  print(circularPrimes(100));
  print(circularPrimes(1000000));
}

int circularPrimes(int n){
  Set<int> primes = {};
  for(int i = 2; i < n; i++){
    if(i.isPrime() && !primes.contains(i)){
      String p = i.toString();
      Set<int> potentialCircularPrimes = {};
      for(int c = 0; c < p.length; c++){
        potentialCircularPrimes.add((p.substring(c) + p.substring(0,c)).toInt());
      }
      bool allPrimes = true;
      for(var prime in potentialCircularPrimes){
        if(!prime.isPrime()){
          allPrimes = false;
          break;
        }
      }
      if(allPrimes){
        primes.addAll(potentialCircularPrimes);
      }
    }
  }
  return primes.length;
}