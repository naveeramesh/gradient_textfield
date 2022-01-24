import 'package:custom_textfield/src/gradienttextfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom Text Field Package"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gradienttextfield(
              controller: email,
              radius: 40,
              height: 60,
              width: 400,
              colors: const [Colors.grey, Colors.white],
              text: "Email",
              fontColor: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            Gradienttextfield(
                controller: password,
                radius: 40,
                height: 60,
                width: 400,
                colors: const [Colors.pink, Colors.purple],
                text: "Password",
                fontColor: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal),
            const SizedBox(
              height: 20,
            ),
            Gradienttextfield(
                controller: cmpassword,
                radius: 40,
                height: 60,
                width: 400,
                colors: const [Colors.green, Colors.orange],
                text: "Confirm Password",
                fontColor: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ],
        ));
  }
}
