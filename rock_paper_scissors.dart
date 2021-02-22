import 'dart:io';

import 'dart:math';

enum Moves {
  rock,
  paper,
  scissors,
}
void main() {
  Moves playerMove;
  Moves aiMove;
  while (true) {
    stdout.write('Rock, Paper, Scissors (r/p/s) : ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      if (input == 'r') {
        playerMove = Moves.rock;
      } else if (input == 'p') {
        playerMove = Moves.paper;
      } else {
        playerMove = Moves.scissors;
      }
      aiMove = Moves.values[Random().nextInt(3)];
      if (playerMove == aiMove) {
        print('Player Move: $playerMove');
        print('AI Move: $aiMove');
        print('It\'s a draw');
      } else if (playerMove == Moves.paper && aiMove == Moves.rock ||
          playerMove == Moves.rock && aiMove == Moves.scissors ||
          playerMove == Moves.scissors && aiMove == Moves.paper) {
        print('Player Move: $playerMove');
        print('AI Move: $aiMove');
        print('You Win');
      } else {
        print('Player Move: $playerMove');
        print('AI Move: $aiMove');
        print('You lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Please enter a valid input (r/p/s)');
    }
  }
}
