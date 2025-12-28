void main(){
  print(specialPythagoreanTriplet(12));
  print(specialPythagoreanTriplet(1000));
}

int specialPythagoreanTriplet(int s){
  int a = 0;
  int b = 0;
  int c = 0;
  for(int i = 0; i < s; i++){
    for(int j = 0; j < s; j++){
      for(int k = 0; k < s; k++){
        if(i < j && j < k && (i*i + j*j) == k*k && i+j+k == s){
          a = i;
          b = j;
          c = k;
        }
      }
    }
  }
  return a*b*c;
}