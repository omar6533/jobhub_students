import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => Experinces();
}

class Experinces extends State<MyHomePage> {
  final controller = TextEditingController();
  final controllerName = TextEditingController();
  final controllerMAjor = TextEditingController();
  final controllerNnationality = TextEditingController();
  final controllerStudentId = TextEditingController();
  final controllerGPA = TextEditingController();
  final controllerPermanentEmail = TextEditingController();
  final controllermobileNumber = TextEditingController();
  final controllermobileParentMobile = TextEditingController();
  final controllermobileExtraMobile = TextEditingController();
  final controllermobileNationalorIqama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 221, 223),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
