import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const Calc(),
    );
  }
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 40.0;
  double resultFontSize = 50.0;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        equation = "0";
        result = "0";
        equationFontSize = 40.0;
        resultFontSize = 50.0;
      } else if (buttonText == "⌫") {
        equationFontSize = 40.0;
        resultFontSize = 50.0;
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        equationFontSize = 40.0;
        resultFontSize = 50.0;

        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        expression = expression.replaceAll('√', 'sqrt');

        try {
          Parser p = new Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        equationFontSize = 50.0;
        resultFontSize = 40.0;
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget NeuButton(String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.075 * buttonHeight,
      color: buttonColor,
      child: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: const BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          //  padding: EdgeInsets.all(14.0),
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              equation,
              style: TextStyle(fontSize: equationFontSize, color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              result,
              style: TextStyle(fontSize: resultFontSize, color: Colors.white),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(children: [
                      NeuButton("AC", 1, Colors.green),
                      NeuButton("⌫", 1, Colors.blueAccent),
                      NeuButton("÷", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      NeuButton("7", 1, Colors.blueGrey),
                      NeuButton("8", 1, Colors.blueGrey),
                      NeuButton("9", 1, Colors.blueGrey),
                    ]),
                    TableRow(children: [
                      NeuButton("4", 1, Colors.blueGrey),
                      NeuButton("5", 1, Colors.blueGrey),
                      NeuButton("6", 1, Colors.blueGrey),
                    ]),
                    TableRow(children: [
                      NeuButton("1", 1, Colors.blueGrey),
                      NeuButton("2", 1, Colors.blueGrey),
                      NeuButton("3", 1, Colors.blueGrey),
                    ]),
                    TableRow(children: [
                      NeuButton(".", 1, Colors.blueAccent),
                      NeuButton("0", 1, Colors.blueGrey),
                      NeuButton("^", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      NeuButton("(", 1, Colors.blueAccent),
                      NeuButton(")", 1, Colors.blueAccent),
                      NeuButton("%", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      NeuButton("sin", 1, Colors.blueAccent),
                      NeuButton("cos", 1, Colors.blueAccent),
                      NeuButton("tan", 1, Colors.blueAccent),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(children: [
                      NeuButton("×", 1, Colors.deepPurple),
                    ]),
                    TableRow(children: [
                      NeuButton("+", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      NeuButton("-", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      NeuButton("√", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      NeuButton("ln", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      NeuButton("=", 2, Colors.deepOrange),
                    ]),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
