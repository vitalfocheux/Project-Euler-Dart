import 'package:root_utils/root_utils.dart';

void main(){
  print(consecutivePrimeSum(50));
  print(consecutivePrimeSum(1000));
  print(consecutivePrimeSum(1000000));
}

int consecutivePrimeSum(int n){
  // Générer tous les primes < n
  List<int> primes = Range(2,n).toList()
                    .where((e) => e.isPrime() && e < n)
                    .map((e) => e.toInt()).toList();
                    
  // print(primes);
  int bestSum = 0;
  int maxLength = 0;
  
  // Essayer toutes les fenêtres consécutives
  for(int start = 0; start < primes.length; start++){
    int sum = 0;
    for(int end = start; end < primes.length; end++){
      sum += primes[end];
      
      // Si la somme dépasse n, pas besoin de continuer cette fenêtre
      if(sum >= n) break;
      
      // Vérifier si c'est un prime avec plus de termes que le meilleur trouvé
      int length = end - start + 1;
      if(sum.isPrime() && length > maxLength){
        bestSum = sum;
        maxLength = length;
      }
    }
  }
  
  return bestSum;
}