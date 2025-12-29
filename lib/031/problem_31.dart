void main(){
  print(coinSums(200));
}

List<int> coins = [1,2,5,10,20,50,100,200];

int coinSums(int n){
  List<int> dp = List.filled(n + 1, 0);
  dp[0] = 1; 
  
  for (int coin in coins) {
    for (int amount = coin; amount <= n; amount++) {
      dp[amount] += dp[amount - coin];
    }
  }
  return dp[n];
}