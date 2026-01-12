import 'package:trotter/trotter.dart';

void main(){
  print(lexicographicPermutations([0,1,2]));
  print(lexicographicPermutations([0,1,2,3,4,5,6,7,8,9])[1000000-1]);
}

List<String> lexicographicPermutations(List<int> digits){
  List<String> res = [];
  Permutations<int> perm = Permutations(digits.length, digits);
  for (final p in perm.iterable) {
    // print(p);
    res.add(p.join());
  }
  res.sort();
  return res;
}