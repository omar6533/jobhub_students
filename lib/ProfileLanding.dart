import 'package:firstproject/Student.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => ProfileLanding();
}

class ProfileLanding extends State<MyHomePage> {
  List<String> majors = [
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
  ];

  void initState() {
    super.initState();
    controllerMAjor.text = selectedMajor;
  }

  // var selectedOption = "Choose item";
  String newValue = "";
  String selectedMajor = 'Bachelor of LAW بكالوريوس قانون';

  CollectionReference Student =
      FirebaseFirestore.instance.collection("student");

  final controllerNameArabic = TextEditingController();
  final controllerName = TextEditingController();
  TextEditingController controllerMAjor = TextEditingController();
  final controllerNnationality = TextEditingController();
  final controllerStudentId = TextEditingController();
  final controllerGPA = TextEditingController();
  final controllerPermanentEmail = TextEditingController();
  final controllermobileNumber = TextEditingController();
  final controllermobileParentMobile = TextEditingController();
  final controllermobileExtraMobile = TextEditingController();
  final controllermobileNationalorIqama = TextEditingController();
  void dispose() {
    controllerName.dispose();
    controllerNameArabic.dispose();
    controllerMAjor.dispose();
    controllerNnationality.dispose();
    controllerStudentId.dispose();
    controllerGPA.dispose();
    controllerPermanentEmail.dispose();
    controllermobileExtraMobile.dispose();
    controllermobileNumber.dispose();
    controllermobileExtraMobile.dispose();
    controllermobileNationalorIqama.dispose();
    super.dispose();
  }

  Future addStudent(
      String NameArabic,
      String Name,
      int idStudent,
      String major,
      double gpa,
      String nationality,
      String permanentEmail,
      int mobileNumber,
      int parentMobile,
      int extraMobile,
      int nationalIdentificationNumberOrIqama) async {
    await FirebaseFirestore.instance.collection('student').add({
      'NameArabic': NameArabic,
      'Name': Name,
      'idStudent': idStudent,
      'major': major,
      'gpa': gpa,
      'nationality': nationality,
      'permanentEmail': permanentEmail,
      'mobileNumber': mobileNumber,
      'parentMobile': parentMobile,
      'extraMobile': extraMobile,
      'nationalIdentificationNumberOrIqama':
          nationalIdentificationNumberOrIqama,
    });
  }

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
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(children: [
                      TextField(
                        controller: controllerNameArabic,
                        decoration: InputDecoration(
                          hintText: 'Enter your name in Arabic',
                          filled: true,
                          // Placeholder text
                        ),
                      ),
                      TextField(
                        controller: controllerName,
                        decoration: InputDecoration(
                          hintText: 'Enter your name in English',
                          border: InputBorder.none,
                          filled: true,
                        ),
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
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      child: Column(children: [
                        TextField(
                          controller: controllerStudentId,
                          decoration: InputDecoration(
                            hintText: "Student's ID",
                            filled: true,

                            // Placeholder text
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        Container(
                          //
                          child: DropdownButtonFormField<String>(
                            value: controllerMAjor.text,
                            onChanged: (newValue) {
                              setState(() {
                                controllerMAjor.text = newValue!;
                                //newValue = selectedMajor;
                              });
                            },
                            items: majors.map((String major) {
                              return DropdownMenuItem<String>(
                                value: major,
                                child: Text(major),
                              );
                            }).toList(),
                            decoration: InputDecoration(
                              filled: true,
                            ),
                            isExpanded: true,
                          ),
                        ),
                        TextField(
                          controller: controllerGPA,
                          decoration: InputDecoration(
                            hintText: 'GPA',
                            filled: true,
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
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
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //This is the start of nationality field
                    child: Column(children: [
                      TextField(
                        controller: controllerNnationality,
                        decoration: InputDecoration(
                          hintText: 'Natonality ',
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                      TextField(
                        controller: controllermobileNationalorIqama,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Natonality ID or Iqama Number',
                          filled: true,
                          border: InputBorder.none,
                        ),
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
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // This is the Start of Contact Field
                    child: Column(children: [
                      TextField(
                        controller: controllerPermanentEmail,
                        decoration: InputDecoration(
                          hintText: 'Proressional Email',
                          filled: true,
                        ),
                      ),
                      TextField(
                        controller: controllermobileNumber,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          filled: true,
                        ),
                      ),
                      TextField(
                        controller: controllermobileParentMobile,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Parent's mobile Number",
                          filled: true,
                        ),
                      ),
                      TextField(
                        controller: controllermobileExtraMobile,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Extra Mobile Number',
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ]),
                  ),
                  // This is the end of Contact Field
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        addStudent(
                          controllerNameArabic.text.trim(),
                          controllerName.text.trim(),
                          int.parse(controllerStudentId.text.trim()),
                          controllerMAjor.text.trim(),
                          double.parse(controllerGPA.text.trim()),
                          controllerNnationality.text.trim(),
                          controllerPermanentEmail.text.trim(),
                          int.parse(controllermobileNumber.text.trim()),
                          int.parse(controllermobileParentMobile.text.trim()),
                          int.parse(controllermobileExtraMobile.text.trim()),
                          int.parse(
                              controllermobileNationalorIqama.text.trim()),
                        );
                      },
                      child: const Text("sava data"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
