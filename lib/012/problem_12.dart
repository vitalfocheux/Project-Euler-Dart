import 'package:root_utils/root_utils.dart';

void main(){
  print(highlyDivisibleTriangularNumber(5));
  print(highlyDivisibleTriangularNumber(500));
}

int highlyDivisibleTriangularNumber(int nbDivisor){
  int n = 1;
  while(true){
    int triangleNumber = n * (n + 1) ~/ 2;
    if(triangleNumber.getDivisors().length > nbDivisor){
      return triangleNumber;
    }
    n++;
  } 
}