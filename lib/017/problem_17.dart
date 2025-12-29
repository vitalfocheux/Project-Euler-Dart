void main(){
  print(countLettersInNumbers(5));
  print(countLettersInNumbers(1000));
}

Map<int, String> ones = {
  1: 'one',
  2: 'two',
  3: 'three',
  4: 'four',
  5: 'five',
  6: 'six',
  7: 'seven',
  8: 'eight',
  9: 'nine',
};

Map<int, String> teens = {
  10: 'ten',
  11: 'eleven',
  12: 'twelve',
  13: 'thirteen',
  14: 'fourteen',
  15: 'fifteen',
  16: 'sixteen',
  17: 'seventeen',
  18: 'eighteen',
  19: 'nineteen',
};

Map<int, String> tens = {
  2: 'twenty',
  3: 'thirty',
  4: 'forty',
  5: 'fifty',
  6: 'sixty',
  7: 'seventy',
  8: 'eighty',
  9: 'ninety',
};

String numberToWords(int n) {
  if (n == 0) return '';
  if (n < 0) return numberToWords(-n);
  
  if (n < 10) return ones[n] ?? '';
  if (n < 20) return teens[n] ?? '';
  if (n < 100) {
    int tens_digit = n ~/ 10;
    int ones_digit = n % 10;
    String result = tens[tens_digit] ?? '';
    if (ones_digit > 0) {
      result += ones[ones_digit] ?? '';
    }
    return result;
  }
  if (n < 1000) {
    int hundreds_digit = n ~/ 100;
    int rest = n % 100;
    String result = ones[hundreds_digit] ?? '';
    result += 'hundred';
    if (rest > 0) {
      result += 'and';
      result += numberToWords(rest);
    }
    return result;
  }
  if (n == 1000) {
    return 'onethousand';
  }
  
  return '';
}

int countLettersInNumbers(int limit) {
  int totalLetters = 0;
  
  for (int i = 1; i <= limit; i++) {
    String words = numberToWords(i);
    totalLetters += words.length;
  }
  
  return totalLetters;
}
