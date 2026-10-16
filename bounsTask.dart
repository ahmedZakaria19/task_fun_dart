String duckDuckGoose(List<dynamic> players, int goose) {
  return players[(goose-1)%players.length].name;
}

class Player {
  String name;
  Player(this.name);
}

void main() {
  List<Player> players = [
    Player('a'),
    Player('b'),
    Player('c'),
    Player('d'),
  ];

  print(duckDuckGoose(players, 1)); 
  print(duckDuckGoose(players, 5)); 
  print(duckDuckGoose(players, 4));
}