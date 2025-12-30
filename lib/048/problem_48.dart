import 'package:root_utils/root_utils.dart';

void main(){
  print(selfPowers(10));
  print(getNLastDigitOfM(10, selfPowers(1000)));
}

int getNLastDigitOfM(int n, BigInt m){
  int l = m.toString().length;
  return m.toString().substring(l-n).toInt();
}

BigInt selfPowers(int n){
  BigInt res = BigInt.zero;
  for(int i = 1; i <= n; i++){
    res += powBigInt(BigInt.from(i), i);
  }
  return res;
}