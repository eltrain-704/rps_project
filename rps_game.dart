import 'dart:io';
import 'dart:math';

void main() {
  List character = ['Rock', 'Paper', 'Scissors'];
  while (true) {
    stdout.write('Welcome to Rock, Paper, Scissors. \nWhat is your name? ');
    String? name = stdin.readLineSync();

    stdout.write(
        'Choose a character $name: r - Rock, p - Paper, s - Scissors or q - Quit? ');
    String? input = stdin.readLineSync();

    //Player character
    var player;
    switch (input) {
      case 'r':
        player = character[0];
        break;
      case 'p':
        player = character[1];
        break;
      case 's':
        player = character[2];
        break;

      default:
        print('You dey do wrong thing $name');
        break;
    }

    //AI character
    final randomNumber = Random().nextInt(3);
    final aiPlayer = character[randomNumber];

    //Player move and AI move
    print('$name played: $player');
    print('AI played: $aiPlayer');

    // Game Logic
    if (player == character[0] && aiPlayer == character[2] ||
        player == character[1] && aiPlayer == character[0] ||
        player == character[2] && aiPlayer == character[1]) {
      print('One cold Hollandia for $name!');
    } else if (player == aiPlayer) {
      print('Only the strong shall win');
    } else {
      print('Omo you lose this one o');
    }
  }
}
