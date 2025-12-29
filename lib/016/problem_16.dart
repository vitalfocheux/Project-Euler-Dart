import 'package:root_utils/root_utils.dart';

void main(){
  print(powerDigitSum(2, 15));
  print(powerDigitSum(2, 1000));
}

int powerDigitSum(int base, int exposant){
  return powBigInt(BigInt.from(base), exposant).toString().findDigitList().sum();
}