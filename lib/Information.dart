import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gameBoard.dart';

class Information extends StatelessWidget {
  @override
  static String routeName = "Information";
  String player1Name = '';
  String player2Name = '';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3333),
      appBar: AppBar(
        backgroundColor: Color(0xFF395B64),
        title: Center(child: Text(" XO Game ")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(
            flex: 1,
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              onChanged: (value) {
                player1Name = value;
              },
              decoration: InputDecoration(
                hintText: "Player 1 Name ",
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF2C3333),
                ),
                filled: true,
                fillColor: Color(0xFFA5C9CA),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF2C3333)),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                player2Name = value;
              },
              decoration: InputDecoration(
                hintText: "Player 2 Name  ",
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF2C3333),
                ),
                filled: true,
                fillColor: Color(0xFFA5C9CA),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF2C3333)),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF395B64)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Color(0xFF2C3333))))),
              child: Text(
                "Play",
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(GameBoard.routeName,
                    arguments: GameBoardArgs(
                        player1Name: player1Name, player2Name: player2Name));
              },
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
