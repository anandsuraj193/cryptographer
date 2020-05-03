import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final textcontroller = TextEditingController();
  final keycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptographer',
      theme: ThemeData(
        accentColor: Colors.green,
        errorColor: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Cryptographer', style: TextStyle(color: Colors.green)),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.black,
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: 'Enter Phrase',
                    fillColor: Colors.green,
                    labelStyle: TextStyle(color: Colors.green)),
                controller: textcontroller,
                onSubmitted: null,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Enter key',
                    fillColor: Colors.green,
                    labelStyle: TextStyle(color: Colors.green)),
                controller: keycontroller,
                keyboardType: TextInputType.number,
                onSubmitted: null,
              ),
              RaisedButton(
                  color: Colors.black,
                  child: Text('ENTER', style: TextStyle(color: Colors.green)),
                  onPressed: null),
              Container(
                padding: EdgeInsets.all(100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Encrypeted Message',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(40),
                    ),
                    Text(
                      'Decrypter Message',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
