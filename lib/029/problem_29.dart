import 'package:root_utils/root_utils.dart';

void main(){
  print(distinctPowers(2, 5));
  print(distinctPowers(2, 100));
}

int distinctPowers(int lower, int upper){
  Set<BigInt> res = {};
  for(int i = lower; i <= upper; i++){
    for(int j = lower; j <= upper; j++){
      res.add(powBigInt(BigInt.from(i), j));
    }
  }
  return res.length;
}