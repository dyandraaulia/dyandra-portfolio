import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class Tictactoe extends StatefulWidget {
  const Tictactoe({super.key});

  @override
  State<Tictactoe> createState() => _TictactoeState();
}

class _TictactoeState extends State<Tictactoe> {
  String turn = 'X';
  List board = List.filled(9, '');
  String winner = '';

  checkWinner() {
    for (int i = 0; i < 9; i += 3) {
      if (board[i] == board[i + 1] &&
          board[i] == board[i + 2] &&
          board[i] != '') {
        setState(() {
          winner = board[i];
        });
        break;
      } else if (i % 6 == 0 &&
          board[i] == board[4] &&
          board[i] == board[(i + 8) % 12]) {
        setState(() {
          winner = board[i];
        });
        break;
      } else if (board[i ~/ 3] == board[(i ~/ 3) + 3] &&
          board[i ~/ 3] == board[(i ~/ 3) + 6]) {
        setState(() {
          winner = board[i ~/ 3];
        });
        break;
      }
    }
    winner != '' ? print(winner) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$turn Turn'.toUpperCase(),
                style: headingStyle.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7D2574),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (board[index] == '') {
                          board[index] = turn;
                          turn = turn == 'X' ? 'O' : 'X';
                          checkWinner();
                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondaryColor,
                        boxShadow: boxshadow,
                      ),
                      child: Center(
                        child: Text(
                          board[index],
                          style: headingStyle.copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7D2574),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    board = List.filled(9, '');
                    turn = 'X';
                    winner = '';
                  });
                },
                child: Text('Reset',
                    style: subHeadingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
