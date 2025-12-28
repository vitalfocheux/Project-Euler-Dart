int sumOddSquares(int n) {
  int s = 0;
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      s += i * i;
    }
  }
  return s; 
}

void main() {
  print(sumOddSquares(5));
  print(sumOddSquares(308000));
}