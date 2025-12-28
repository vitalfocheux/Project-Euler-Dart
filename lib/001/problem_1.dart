void main(){
  print(multipleOf3Or5(10));
  print(multipleOf3Or5(1000));
}

int multipleOf3Or5(int number){
  int s = 0;
  for(int i = 0; i < number; i++){
    if(i%3 == 0 || i%5 == 0){
      s += i;
    }
  }
  return s; 
}