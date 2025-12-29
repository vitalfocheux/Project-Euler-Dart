import 'package:root_utils/root_utils.dart';

void main(){
  print(digitFactorials());
}

int digitFactorials(){
  List<int> res = [];
  for(int i = 10; i < 10000000; i++){
    if(i == i.toString().findDigitList().map((e) => factorial(e)).reduce((a,b) => a+b)){
      res.add(i);
    }
  }
  return res.sum();
}