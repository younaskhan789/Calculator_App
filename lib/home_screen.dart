

import 'package:bootcamppp/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/my_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = "";
  var answer = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(userInput.toString(), style: TextStyle(
                          fontSize: 30,
                          color: WhiteColor,
                        ),),
                      ),
                      SizedBox(height: 15,),
                      Text(answer.toString(), style: TextStyle(
                        fontSize: 30,
                        color: WhiteColor,
                      ),)
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CustomButton(
                        title: "AC", onPressed: () {
                        userInput = '';
                        answer = '';
                        setState(() {

                        });
                      },

                      ),
                      CustomButton(
                        title: "+/-", onPressed: () {
                        userInput += '+/-';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "%", onPressed: () {
                        userInput += '%';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "/", color: Colors.green,
                        onPressed: () {
                          userInput += '/';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "7", onPressed: () {
                        userInput += '7';
                        setState(() {

                        });
                      },

                      ),
                      CustomButton(
                        title: "8", onPressed: () {
                        userInput += '8';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "9", onPressed: () {
                        userInput += '9';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "x", color: Colors.green, onPressed: () {
                        userInput += 'x';
                        setState(() {

                        });
                      },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "4", onPressed: () {
                        userInput += '4';
                        setState(() {

                        });
                      },

                      ),
                      CustomButton(
                        title: "5", onPressed: () {
                        userInput += '5';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "6", onPressed: () {
                        userInput += '6';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "-", color: Colors.green, onPressed: () {
                        userInput += '-';
                        setState(() {

                        });
                      },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "1", onPressed: () {
                        userInput += '1';
                        setState(() {

                        });
                      },

                      ),
                      CustomButton(
                        title: "2", onPressed: () {
                        userInput += '2';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "3", onPressed: () {
                        userInput += '3';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "+", color: Colors.green, onPressed: () {
                        userInput += '+';
                        setState(() {

                        });
                      },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "0", onPressed: () {
                        userInput += '0';
                        setState(() {

                        });
                      },

                      ),
                      CustomButton(
                        title: ".", onPressed: () {
                        userInput += '.';
                        setState(() {

                        });
                      },
                      ),
                      CustomButton(
                        title: "DEL", onPressed: () {
                          userInput = userInput.substring(0, userInput.length-1);
                          setState(() {

                          });
                      },
                      ),
                      CustomButton(
                        title: "=", color: Colors.green, onPressed: () {
                          equalPress();
                          setState(() {

                          });
                      },
                      ),
                    ],
                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput = userInput. replaceAll('x', '*');
    Parser p = Parser();
    Expression expression= p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL,contextModel);
    answer= eval.toString();

  }


}
