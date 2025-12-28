num EvenFibonacciNumbers(num n){
  num a = 1;
  num b = 2;
  num res = b;
  num i = 0;
  while(true){
    if(a > n || b > n){
      break;
    }
    if(i%2 == 0){
      a += b;
      if(a%2 == 0){
        res += a;
      }
    }else{
      b += a;
      if(b%2 == 0){
        res += b;
      }
    }
    i++;
  }

  return res;
}

void main() {
  print(EvenFibonacciNumbers(4000000));
}