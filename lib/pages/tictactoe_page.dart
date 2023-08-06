// ignore_for_file: use_build_context_synchronously

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
  List<bool> winBoard = List.filled(9, false);

  Future animateWinBoard(int i, int dur) async {
    await Future.delayed(Duration(milliseconds: dur));
    setState(() {
      winBoard[i] = true;
    });
  }

  checkWinner() {
    for (int i = 0; i < 9; i += 3) {
      if (board[i] == board[i + 1] &&
          board[i] == board[i + 2] &&
          board[i] != '') {
        setState(() {
          winner = board[i];
          animateWinBoard(i, 100);
          animateWinBoard(i + 1, 400);
          animateWinBoard(i + 2, 700);
        });
        break;
      } else if (i % 6 == 0 &&
          board[i] == board[4] &&
          board[i] == board[(i + 8) % 12] &&
          board[i] != '') {
        setState(() {
          winner = board[i];
          animateWinBoard(i, 100);
          animateWinBoard(4, 400);
          animateWinBoard((i + 8) % 12, 700);
        });
        break;
      } else {
        int t = (i / 3).toInt();
        if (board[t] == board[t + 3] &&
            board[t] == board[t + 6] &&
            board[t] != '') {
          setState(() {
            winner = board[t];
            animateWinBoard(t, 100);
            animateWinBoard(t + 3, 400);
            animateWinBoard(t + 6, 700);
          });
          break;
        } else {
          !board.contains('') ? winner = 'draw' : null;
        }
      }
    }
  }

  Future dialog() async {
    await Future.delayed(Duration(milliseconds: winner != 'draw' ? 1000 : 100));
    return showDialog(
      useSafeArea: false,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: primaryColor,
        content: SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
                winner != 'draw' ? '$winner WON!' : '$winner!'.toUpperCase(),
                style: headingStyle.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    ).whenComplete(() => setState(() {
          board = List.filled(9, '');
          turn = 'X';
          winner = '';
          winBoard = List.filled(9, false);
        }));
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
                      winner != '' ? dialog() : null;
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: winBoard[index] ? primaryColor : secondaryColor,
                        boxShadow: boxshadow,
                      ),
                      child: Center(
                        child: Text(
                          board[index],
                          style: headingStyle.copyWith(
                            shadows: [
                              Shadow(
                                color:
                                    Colors.white, // Warna putih melingkupi teks
                                offset: Offset(-1, -1), // Posisi shadow putih
                                blurRadius: 10, // Blur radius shadow putih
                              ),
                              Shadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Warna hitam untuk background shadow
                                offset: Offset(2, 2), // Posisi shadow hitam
                                blurRadius: 4, // Blur radius shadow hitam
                              ),
                            ],
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: winBoard[index]
                                ? Colors.white
                                : Color(0xff7D2574),
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
                    winBoard = List.filled(9, false);
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
