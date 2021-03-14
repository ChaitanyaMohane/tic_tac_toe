import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
//
class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String startGame = "X";
  String winner = "";

  var dataList = List.generate(3, (i) => [" ", " ", " "], growable: false);
  String b1 = "",
      b2 = "",
      b3 = "",
      b4 = "",
      b5 = "",
      b6 = "",
      b7 = "",
      b8 = "",
      b9 = "";

  void dis() {
    //
    dataList[0][0] = "";
    dataList[0][1] = "";
    dataList[0][2] = "";
    //
    //
    dataList[1][0] = "";
    dataList[1][1] = "";
    dataList[1][2] = "";
    //
    //
    dataList[2][0] = "";
    dataList[2][1] = "";
    dataList[2][2] = "";
  }

  void checkWinner() {
    if (dataList[0][0] == "O" &&
        dataList[0][1] == "O" &&
        dataList[0][2] == "O") {
      winner = "O is Winner";
    }
    if (dataList[1][0] == "O" &&
        dataList[1][1] == "O" &&
        dataList[1][2] == "O") {
      winner = "O is Winner";
    }
    if (dataList[2][0] == "O" &&
        dataList[2][1] == "O" &&
        dataList[2][2] == "O") {
      winner = "O is Winner";
    }

    if (dataList[0][0] == "O" &&
        dataList[1][0] == "O" &&
        dataList[2][0] == "O") {
      winner = "O is Winner";
    }

    if (dataList[0][1] == "O" &&
        dataList[1][1] == "O" &&
        dataList[2][1] == "O") {
      winner = "O is Winner";
    }

    if (dataList[0][2] == "O" &&
        dataList[1][2] == "O" &&
        dataList[2][2] == "O") {
      winner = "O is Winner";
    }
    if (dataList[0][0] == "O" &&
        dataList[1][1] == "O" &&
        dataList[2][2] == "O") {
      winner = "O is Winner";
    }

    if (dataList[2][0] == "O" &&
        dataList[1][1] == "O" &&
        dataList[0][2] == "O") {
      winner = "O is Winner";
    }
    // for X

    if (dataList[0][0] == "X" &&
        dataList[0][1] == "X" &&
        dataList[0][2] == "X") {
      winner = "X is Winner";
    }
    if (dataList[1][0] == "X" &&
        dataList[1][1] == "X" &&
        dataList[1][2] == "X") {
      winner = "X is Winner";
    }
    if (dataList[2][0] == "X" &&
        dataList[2][1] == "X" &&
        dataList[2][2] == "X") {
      winner = "X is Winner";
    }

    if (dataList[0][0] == "X" &&
        dataList[1][0] == "X" &&
        dataList[2][0] == "X") {
      winner = "X is Winner";
    }

    if (dataList[0][1] == "X" &&
        dataList[1][1] == "X" &&
        dataList[2][1] == "X") {
      winner = "X is Winner";
    }

    if (dataList[0][2] == "X" &&
        dataList[1][2] == "X" &&
        dataList[2][2] == "X") {
      winner = "X is Winner";
    }
    if (dataList[0][0] == "X" &&
        dataList[1][1] == "X" &&
        dataList[2][2] == "X") {
      winner = "X is Winner";
    }

    if (dataList[2][0] == "X" &&
        dataList[1][1] == "X" &&
        dataList[0][2] == "X") {
      winner = "X is Winner";
    }
    if (winner != "") {
      print("$winner");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        title: Text(
          "Tic Tac Toe",
          style: TextStyle(fontSize: 30.0, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.yellow[200],
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[0][0] == "X" || dataList[0][0] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          //1st Button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b1 = "O";
                                            dataList[0][0] = "O";
                                          } else {
                                            startGame = "X";
                                            b1 = "X";
                                            dataList[0][0] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b1",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[1][0] == "X" || dataList[1][0] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          // 2nd button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b2 = "O";
                                            dataList[1][0] = "O";
                                          } else {
                                            startGame = "X";
                                            b2 = "X";
                                            dataList[1][0] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b2",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[2][0] == "X" || dataList[2][0] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          // 3rd button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b3 = "O";
                                            dataList[2][0] = "O";
                                          } else {
                                            startGame = "X";
                                            b3 = "X";
                                            dataList[2][0] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b3",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[0][1] == "X" || dataList[0][1] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          // 4th button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b4 = "O";
                                            dataList[0][1] = "O";
                                          } else {
                                            startGame = "X";
                                            b4 = "X";
                                            dataList[0][1] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b4",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[1][1] == "X" || dataList[1][1] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          //5th button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b5 = "O";
                                            dataList[1][1] = "O";
                                          } else {
                                            startGame = "X";
                                            b5 = "X";
                                            dataList[1][1] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b5",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[2][1] == "X" || dataList[2][1] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          // 6th button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b6 = "O";
                                            dataList[2][1] = "O";
                                          } else {
                                            startGame = "X";
                                            b6 = "X";
                                            dataList[2][1] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b6",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[0][2] == "X" || dataList[0][2] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          // 7th button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b7 = "O";
                                            dataList[0][2] = "O";
                                          } else {
                                            startGame = "X";
                                            b7 = "X";
                                            dataList[0][2] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b7",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[1][2] == "X" || dataList[1][2] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          // 8th button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b8 = "O";
                                            dataList[1][2] = "O";
                                          } else {
                                            startGame = "X";
                                            b8 = "X";
                                            dataList[1][2] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b8",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          elevation: 15.0,
                          child: FlatButton(
                            onPressed:
                                dataList[2][2] == "X" || dataList[2][2] == "O"
                                    ? null
                                    : () {
                                        setState(() {
                                          //
                                          // 9th button
                                          //
                                          if (startGame == "X") {
                                            startGame = "O";
                                            b9 = "O";
                                            dataList[2][2] = "O";
                                          } else {
                                            startGame = "X";
                                            b9 = "X";
                                            dataList[2][2] = "X";
                                          }
                                          checkWinner();
                                        });
                                      },
                            child: Text(
                              "$b9",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 50.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 30.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 80.0,
                          width: 120.0,
                          child: Card(
                            elevation: 20.0,
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  b1 = "";
                                  b2 = "";
                                  b3 = "";
                                  b4 = "";
                                  b5 = "";
                                  b6 = "";
                                  b7 = "";
                                  b8 = "";
                                  b9 = "";
                                  dataList[0][0] = "";
                                  dataList[0][1] = "";
                                  dataList[0][2] = "";
                                  //
                                  //
                                  dataList[1][0] = "";
                                  dataList[1][1] = "";
                                  dataList[1][2] = "";
                                  //
                                  //
                                  dataList[2][0] = "";
                                  dataList[2][1] = "";
                                  dataList[2][2] = "";
                                  winner = "";
                                  String startGame = "X";
                                });
                              },
                              child: Text(
                                "Reset",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        SizedBox(
                          height: 80.0,
                          width: 120.0,
                          child: Card(
                            elevation: 20.0,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Exit",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Text(
                      "$winner ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
