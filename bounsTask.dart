String duckDuckGoose(List<dynamic> players, int goose) {
  int index = goose % players.length -1;
  return (index < 0)?players[index + players.length]:players[index];
}

void main() {
  print(duckDuckGoose(['a', 'b', 'c', 'd'], 1));
  print(duckDuckGoose(['a', 'b', 'c', 'd'], 5));
  print(duckDuckGoose(['a', 'b', 'c', 'd'], 4));
}
