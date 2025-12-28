void main(){
  print(largestPrimeFactor(13195));
  print(largestPrimeFactor(600851475143));
}

List<int> largestPrimeFactor(int n){
  List<int> res = [];
  int i = 2;
  while(true){
    if(n == 1){
      break;
    }
    if(n%i == 0){
      n = (n / i).ceil();
      res.add(i);
    }
    i++;
  }
  return res;
}