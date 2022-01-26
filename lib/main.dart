import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: DialPad(
            enableDtmf: false,
            backspaceButtonIconColor: Colors.red,
            makeCall: (number) {
              print(number);
            },
          ),
        ),
      ),
    );
  }
}
