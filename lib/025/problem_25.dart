void main(){
  print(digitFibonacciNumber(3));
  print(digitFibonacciNumber(1000));
}


int digitFibonacciNumber(int nDigit){
  int idxFibonacci = 1;
  BigInt a = BigInt.one;
  BigInt b = BigInt.one;
  while(true){
    if(idxFibonacci%2 == 0){
      if(a.toString().length == nDigit){
        return idxFibonacci;
      }
      a += b;
    }else{
      if(b.toString().length == nDigit){
        return idxFibonacci;
      }
      b += a;
    }
    idxFibonacci++;
  }
}