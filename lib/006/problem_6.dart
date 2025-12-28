import 'package:root_utils/root_utils.dart';

void main(){
  print(sumSquareDifference(10));
  print(sumSquareDifference(100));
}

int sumSquareDifference(int n){
  int squareSum = pow(Range.closed(1, n).toList().sum() as int, 2);
  int sumSquare = 0;
  for(int i = 1; i <= n; i++){
    sumSquare += i*i;
  }
  return squareSum - sumSquare;
}