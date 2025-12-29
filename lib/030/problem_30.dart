import 'package:root_utils/root_utils.dart';

void main(){
  print(digitPowers(4));
  print(digitPowers(5));
}

int digitPowers(int n){
  List<int> res = [];
  int upper = pow(10, n+1);
  for(int i = 10; i <= upper; i++){
    if(i == i.toString().findDigitList().map((e) => pow(e, n)).reduce((a,b) => a+b)){
      res.add(i);
    }
  }
  return res.sum();
}
