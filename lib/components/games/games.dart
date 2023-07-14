import 'package:flutter/material.dart';
import 'package:portfolio/components/games/gamesCard.dart';
import 'package:portfolio/theme.dart';

class Games extends StatelessWidget {
  Games({super.key});

  final List<Game> games = [
    Game(title: 'Tictactoe', image: 'assets/tictactoe.png'),
    Game(title: 'Chess', image: 'assets/tictactoe.png'),
    Game(title: 'Sudoku', image: 'assets/tictactoe.png'),
    Game(title: 'Minesweeper', image: 'assets/tictactoe.png'),
    Game(title: 'Block eat', image: 'assets/tictactoe.png'),
    // Add more games as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 170,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: games.length,
        itemBuilder: (context, index) {
          final game = games[index];
          return GamesCard(title: game.title, image: game.image);
        },
      ),
    );
  }
}

class Game {
  final String title;
  final String image;

  Game({required this.title, required this.image});
}
