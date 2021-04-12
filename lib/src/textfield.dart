import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  @override
  MyTextFieldState createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  String inputText = "";

  final TextEditingController controller = TextEditingController();

  void onSubmited(String value) {
    setState(() {
      inputText = inputText + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              //placeholder
              decoration: InputDecoration(hintText: "Ingrese el texto aqui"),
              onSubmitted: onSubmited,
              controller: controller,
            ),
            Text(inputText)
          ],
        ),
      ),
    );
  }
}
