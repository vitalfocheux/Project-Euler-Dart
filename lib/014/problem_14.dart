void main(){
  print(longestCollatzSequence(1000000));
}

// Mémoïsation pour éviter de recalculer les longueurs
Map<int, int> memo = {};

int collatzLength(int n) {
  if (n == 1) return 1;
  if (memo.containsKey(n)) return memo[n]!;
  
  int next = n.isEven ? n ~/ 2 : 3 * n + 1;
  int length = 1 + collatzLength(next);
  
  memo[n] = length;
  return length;
}

int longestCollatzSequence(int n){
  int maxLength = 0;
  int startNumber = 0;
  
  for(int i = 1; i < n; i++){
    int length = collatzLength(i);
    if(length > maxLength){
      maxLength = length;
      startNumber = i;
    }
  }
  return startNumber;
}