
import 'package:calcultour/Widgest/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter calculator',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int firstnum ;
  late int secondnum ;
  late String history ='';
  late String Todispaly ='' ;
  late String result ;
  late String opreator ;

  void btnOnClick(String btnValue){
    // print(btnValue);
    if(btnValue == 'C')
    {
      Todispaly = '';
      firstnum = 0;
      secondnum = 0 ;
      result = '' ;

    } else if (btnValue == 'AC')
    {
      Todispaly = '';
      firstnum = 0;
      secondnum = 0 ;
      result = '' ;
      history = '';
      opreator ='';

    } else if (btnValue == '+/-'){
      if(Todispaly[0] != '-'){
            result = '-'+Todispaly ;
      }else {
        result = Todispaly.substring(1);
      }
    } else if(btnValue =='<'){
      result = Todispaly.substring(0,Todispaly.length-1);
    }

    else if (btnValue == '+' || btnValue == '-'
    || btnValue == 'X' || btnValue == '/')
    {
      firstnum = int.parse(Todispaly);
      result = '';
      opreator = btnValue ;

    }else if (btnValue == '='){
      secondnum = int.parse(Todispaly);
      if(opreator == '+'){
        result = (firstnum+secondnum).toString();
        history = firstnum.toString() + opreator.toString() + secondnum.toString() ;
      }
      if(opreator == '-'){
        result = (firstnum-secondnum).toString();
        history = firstnum.toString() + opreator.toString() + secondnum.toString() ;
      }
      if(opreator == 'X'){
        result = (firstnum*secondnum).toString();
        history = firstnum.toString() + opreator.toString() + secondnum.toString() ;
      }
      if(opreator == '/'){
        result = (firstnum/secondnum).toString();
        history = firstnum.toString() + opreator.toString() + secondnum.toString() ;
      }
    }
    else {
      result = int.parse(Todispaly+ btnValue).toString();
    }
    setState(() {
      Todispaly = result ;
    });
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF28527a),
      ),
      backgroundColor: Color(0xFF56739a),
      body: 
      Container(
        child:

        Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Container(
              child: Padding(padding: EdgeInsets.only(right: 12),
                child: Text(history,

                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                          fontSize: 24.0,
                          color: Color(0x66FFFFFF)
                      )

                  ),

                ),

              ),
              alignment: Alignment(1.0,1.0),
            ),
            Container(
              child: Padding(padding: EdgeInsets.all(12.0),
                child: Text(Todispaly,

                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 48.0,
                    color: Colors.white
                  )

                ),

                ),
                
              ),
              alignment: Alignment(1.0,1.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: 'C',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '<',
                  callback: btnOnClick,
                  filltext: 0XFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '/',
                  callback: btnOnClick,
                  filltext: 0XFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '9',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '8',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '7',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: 'X',
                  callback: btnOnClick,
                  filltext: 0XFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '6',
                  callback:btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '5',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '4',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '-',
                  callback: btnOnClick,
                  filltext: 0XFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '3',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '2',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '1',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '+',
                  callback: btnOnClick,
                  filltext: 0XFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 17,
                ),
                CalculatorButton(
                  text: '0',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '00',
                  callback: btnOnClick,
                  filltext: 0XFFB3E5FC,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),
                CalculatorButton(
                  text: '=',
                  callback: btnOnClick,
                  filltext: 0XFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
