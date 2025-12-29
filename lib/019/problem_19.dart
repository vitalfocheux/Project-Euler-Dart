void main(){
  print(countSundaysOnFirstOfMonth());
}

bool isLeapYear(int year) {
  if (year % 400 == 0) return true;
  if (year % 100 == 0) return false;
  if (year % 4 == 0) return true;
  return false;
}

int daysInMonth(int month, int year) {
  List<int> days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  
  if (month == 2 && isLeapYear(year)) {
    return 29;
  }
  
  return days[month - 1];
}

int countSundaysOnFirstOfMonth() {
  int dayOfWeek = 2; 
  int count = 0;
  
  for (int year = 1901; year <= 2000; year++) {
    for (int month = 1; month <= 12; month++) {
      if (dayOfWeek == 0) {
        count++;
      }
      
      int days = daysInMonth(month, year);
      dayOfWeek = (dayOfWeek + days) % 7;
    }
  }
  
  return count;
}
