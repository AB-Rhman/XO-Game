import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget {
  String text ;
  Function onButtonClick ;
  int index;

  BoardButton(this.text,this.index,this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF2C3333)),
             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Color(0xFF252c4a))
    ),
             ),
             ),
              onPressed: (){
                 onButtonClick(index);
                },
              child: Text(text ,
                style: TextStyle(color: Color(0xFFA5C9CA), fontSize: 50,
                ),

              )),
        ),
    );
  }
}
