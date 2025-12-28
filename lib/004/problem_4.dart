import 'package:root_utils/root_utils.dart';

void main() {
  for(int i = 2; i <= 3; i++){
    final result = measureTime(
      () => largestPalindromeProduct(i),
      'largestPalindromeProduct($i)'
    );
    print('Résultat: $result');
  }
}

int largestPalindromeProduct(int nDigit){
  int maxDigit = pow(10, nDigit);
  int a = maxDigit - 1;
  int b = maxDigit - 1;
  List<int> r = [];
  for(int i = a; i >= 1; i--){
    for(int j = b; j >= maxDigit - maxDigit / 10; j--){
      int res = i * j;
      if(res.isPalindrome()){
        r.add(res);
      }
    }
  }
  return r.max();
}

T measureTime<T>(T Function() fn, String label) {
  final stopwatch = Stopwatch()..start();
  final result = fn();
  stopwatch.stop();
  print('$label: ${stopwatch.elapsedMilliseconds}ms');
  return result;
}