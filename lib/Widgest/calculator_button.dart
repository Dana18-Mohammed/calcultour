
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text ;
  final int filltext ;
  final int textcolor ;
  final double textsize ;
  final Function callback ;

  const CalculatorButton({ required this.text, required this.filltext,
    required this.textcolor, required this.callback, required this.textsize}) ;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5)),
          child: Text(text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
                    fontSize: textsize
                )
            ),
          ),
            color: Color(filltext),
          // color: Colors.lightBlue[100],
          textColor: Color(textcolor),
          onPressed:()=> callback(text),
        ),

      ),
    );
  }
}
