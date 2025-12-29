import 'package:root_utils/root_utils.dart';

void main(){
  print(latticePaths(2));
  print(latticePaths(20));
}

/// Nombre de chemins dans une grille n×n
/// Pour atteindre le coin opposé, on doit faire n déplacements à droite et n déplacements vers le bas
/// C'est une combinaison: C(2n, n) = (2n)! / (n! * n!)
int latticePaths(int n){
  // Utiliser la programmation dynamique
  // dp[i][j] = nombre de chemins pour atteindre (i, j)
  List<List<int>> dp = List.generate(n + 1, (i) => List.generate(n + 1, (j) => 0));
  
  // Initialiser: il y a un seul chemin pour chaque cellule de la première ligne et colonne
  for(int i = 0; i <= n; i++){
    dp[i][0] = 1;
    dp[0][i] = 1;
  }
  
  // Remplir le reste: dp[i][j] = dp[i-1][j] + dp[i][j-1]
  for(int i = 1; i <= n; i++){
    for(int j = 1; j <= n; j++){
      dp[i][j] = dp[i-1][j] + dp[i][j-1];
    }
  }
  
  return dp[n][n];
}