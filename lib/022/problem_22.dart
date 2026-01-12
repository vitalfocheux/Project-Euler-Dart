import 'dart:io';

void main(){
  print(score("COLIN", 938));
  print(sumNamesScores());
}

int score(String name, int place){
  int score = 0;
  for(int i = 0; i < name.length; i++){
    score += name.codeUnitAt(i) - 'A'.codeUnits[0] + 1;
  }
  return score * place;
}

int sumNamesScores(){
  final file = File('0022_names.txt');
  final content = file.readAsStringSync();
  final names = content.replaceAll('"', '').split(',').map((s) => s.trim()).toList();
  names.sort();
  int total = 0;
  for (var i = 0; i < names.length; i++) {
    total += score(names[i], i + 1);
  }
  return total;
}