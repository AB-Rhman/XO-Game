
import 'package:flutter/material.dart';
import 'package:xo_game/Information.dart';
import 'package:xo_game/gameBoard.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 24,
           color: Colors.black ,
          ),
        )
      ),
      routes: {
        GameBoard.routeName : (context)=>GameBoard(),
        Information.routeName : (context)=>Information(),
      },
      initialRoute: Information.routeName,
    );
  }
}
