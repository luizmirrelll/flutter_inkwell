import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("latihan membuat button"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                    color: Colors.amber,
                    child: Text("raise button"),
                    shape: StadiumBorder(),
                    onPressed: () {}),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 2, //bayangan
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.pink],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Center(
                          child: Text(
                            "My button",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
