import 'package:root_utils/root_utils.dart';

void main(){
  print(smallestMultiple(10));
  print(smallestMultiple(20));
}

dynamic smallestMultiple(int n){
  return Range.closed(1, n).toList().getPPCM();
}