import 'package:firstproject/Student.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<MyHomePage> {
  // CollectionRefrence Student = FirebaseFirestore.instance.collection("student");
  var stu = Student();

  // String name = ''; // Variable to store the entered text
  String? _selectedValue;
  final controllerStudentId = TextEditingController();
  final controllerNameArabic = TextEditingController();
  final controllerName = TextEditingController();
  final controllerMAjor = TextEditingController();
  final controllerNnationality = TextEditingController();
  final controllerGPA = TextEditingController();
  final controllerPermanentEmail = TextEditingController();
  final controllermobileNumber = TextEditingController();
  final controllermobileParentMobile = TextEditingController();
  final controllermobileExtraMobile = TextEditingController();
  final controllermobileNationalorIqama = TextEditingController();

  // var selectedOption = "Choose item", newValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 221, 223),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  child: Column(children: [
                    Text(
                      "Student's Information",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        backgroundColor: Color.fromARGB(255, 219, 221, 223),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  //  This is the Start of Name Field
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255), width: 0.1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(children: [
                    TextFormField(
                      controller: controllerNameArabic,
                      decoration: InputDecoration(
                        hintText: 'Enter your name in Arabic',
                        filled: true,
                        // Placeholder text
                      ),
                      onChanged: (value) {
                        setState(() {
                          // Update the 'name' variable with the entered text
                          stu.NameArabic = value;
                          print(stu.NameArabic);
                        });
                      },
                    ),
                    TextFormField(
                      controller: controllerName,
                      decoration: InputDecoration(
                        hintText: 'Enter your name in English',
                        border: InputBorder.none,
                        filled: true,
                      ),
                      onChanged: (value) {
                        setState(() {
                          //Update the 'name' variable with the entered text
                          stu.Name = value;
                          print(stu.Name);
                        });
                      },
                    ),
                  ]),
                ), //this is the end of Name Filed
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Education",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        backgroundColor: Color.fromARGB(255, 219, 221, 223),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                //This is the Start of Education field
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255), width: 0.1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    child: Column(children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Student's ID",
                          filled: true,
                          // Placeholder text
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            // Update the 'name' variable with the entered text
                            stu.idStudent = int.tryParse(value) ?? 0;
                            print(stu.idStudent);
                          });
                        },
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText: 'Choose your Major',
                          filled: true,
                        ),
                        value: _selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            stu.major = newValue!;
                            print(newValue);
                          });
                        },
                        items: <String>[
                          'بكالوريوس المحاسبة Bachelor of Accounting',
                          'بكالوريوس المالية Bachelor of Finance',
                          'بكالوريوس التسويق Bachelor of Marketing',
                          'بكالوريوس إدارة طيران Bachelor of Aviation Management',
                          'بكالوريوس علوم حاسب Bachelor of Computer Science',
                          'بكالوريوس علوم حاسب (أمن سيبراني) Bachelor of Computer Science (CyberSecurity)',
                          'بكالوريوس نظم معلومات Bachelor of Information Systems',
                          'بكالوريوس نظم معلومات (أمن سيبراني) (CyberSecurity) Bachelor of Information Systems',
                          'بكالوريوس هندسة برمجيات Bachelor of Software Engineering',
                          'بكالوريوس هندسة برمجيات (أمن سيبراني) (CyberSecurity) Bachelor of Software Engineering',
                          'بكالوريوس الإدارة الهندسية للإنتاج والتصنيع Bachelor of Production and Manufacturing Engineering',
                          'بكالوريوس الإدارة الهندسية للإنشاء والتشييد Bachelor of Construction Engineering Management',
                          'بكالوريوس الإتصالات والشبكات (شبكات) (Bachelor of Communication and Networks Engineering (Networks)',
                          'بكالوريوس الإتصالات والشبكات (إتصالات) (Bachelor of Communication and Networks Engineering (Communication)',
                          'بكالوريوس الهندسة المدنية والبيئة Bachelor of Environmental and civil engineering',
                          'بكالوريوس الهندسة الكهربائية Bachelor of Electrical engineering',
                          'Bachelor of LAW بكالوريوس قانون'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text('Choose your Major'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'GPA',
                          filled: true,
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          setState(() {
                            // Update the 'name' variable with the entered text
                            stu.gpa = double.parse(value);
                            print(stu.gpa);
                          });
                        },
                      ),
                    ]),
                  ),
                  //),
                ), //This is the end of Education Field
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Nationality",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        backgroundColor: Color.fromARGB(255, 219, 221, 223),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255), width: 0.1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  //This is the start of nationality field
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Natonality ',
                        filled: true,
                      ),
                      onChanged: (value) {
                        setState(() {
                          // Update the 'name' variable with the entered text
                          stu.nationality = value;
                          print(stu.nationality);
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Natonality ID or Iqama Number',
                        filled: true,
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          // Update the 'name' variable with the entered text
                          stu.nationalIdentificationNumberOrIqama =
                              int.parse(value);
                          // print(stu.fatherName);
                        });
                      },
                    ),
                  ]),
                ), //This is the end of Nationlaity Field
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Contact infromation",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        backgroundColor: Color.fromARGB(255, 219, 221, 223),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255), width: 0.1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // This is the Start of Contact Field
                  child: Column(children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Proressional Email',
                        filled: true,
                      ),
                      onChanged: (value) {
                        setState(() {
                          // Update the 'name' variable with the entered text
                          stu.permanentEmail = value;
                          print(stu.permanentEmail);
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Mobile Number',
                        filled: true,
                      ),
                      onChanged: (value) {
                        setState(() {
                          // Update the 'name' variable with the entered text
                          stu.mobileNumber = int.parse(value);
                          print(stu.mobileNumber);
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Parent's mobile Number",
                        filled: true,
                      ),
                      onChanged: (value) {
                        setState(() {
                          // Update the 'name' variable with the entered text
                          stu.parentMobile = int.parse(value);
                          print(stu.parentMobile);
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Extra Mobile Number',
                        filled: true,
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          // Update the 'name' variable with the entered text
                          stu.extraMobile = int.parse(value);
                          print(stu.extraMobile);
                        });
                      },
                    ),
                  ]),
                ),
                // This is the end of Contact Field
                SizedBox(
                  height: 16,
                ),
                // Container(
                //   child: ElevatedButton(
                //     onPressed: () {
                //       CollectionReference student =
                //           FirebaseFirestore.instance.collection('student');
                //       student
                //           .add({
                //             'StudentId': controllerStudentId,
                //             'name': controllerName,
                //             'NameArabi': controllerNameArabic,
                //             'Major': controllerMAjor,
                //             'Natunality': controllerNnationality,
                //             'GPA': controllerGPA,
                //             'PermanentEmail': controllerPermanentEmail,
                //             'MobileNumber': controllermobileNumber,
                //             'ParentNumber': controllermobileParentMobile,
                //             'ExtraMobile': controllermobileExtraMobile,
                //           })
                //           .then((value) => print("User Added"))
                //           .catchError(
                //               (error) => print("Failed to add user: $error"));
                //     },
                //     child: const Text("sava data"),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
