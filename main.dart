import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(

    home: MyButton(),

  ));

}


class MyButton extends StatefulWidget {

  @override

  MyButtonState createState() => MyButtonState();

}



class MyButtonState extends State<MyButton> {

  int counter = 0;

  List<String> strings = ['sandia', 'melon', 'uva', 'cereza', 'frambuesa', 'kiwi', 'lima'];


  String displayedString = "Las frutas son";




  void onPressOfButton() {

    setState(() {

      displayedString = strings[counter];

      counter = counter < 7 ? counter + 1 : 0;

    });

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Stateful Widget"),

        backgroundColor: Colors.blueGrey,

      ),

      body: Container(

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Text(displayedString, style: TextStyle(fontSize: 40.0)),

              Padding(padding: EdgeInsets.all(10.0)),

              RaisedButton(

                child: Text(

                  "Press me",

                  style: TextStyle(color: Colors.black87),

                ),

                color: Colors.blue,

                onPressed: onPressOfButton,

              )

            ],

          ),

        ),

      ),

    );

  }

}