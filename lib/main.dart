import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/widgets.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/binding_controller.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/shared/helpers.dart';
import 'package:jobhub/student_landing/views/student_landing.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      debugShowCheckedModeBanner: false,
      title: 'JobHub',
      theme: ThemeData(
        secondaryHeaderColor: Color(0xFFffc107),
        primaryColor: Color(0xFF008fbe),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF008fbe)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PSU JobHub'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/JobHub.png'),
              SizedBox(
                height: 44, // Set the desired height
                child: TextField(
                  controller: authController
                      .emailController, // Provide your controller here
                  readOnly: true, // Set to true to make it non-editable
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors
                        .textFiledBackgroundColor, // Set the background color
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Set the border radius
                      borderSide: BorderSide.none, // Hide the border
                    ),
                    hintText:
                        '${authController.emailController.text.isNotEmpty ? authController.emailController.text : "PSU Email"}', // Set the hint text
                    hintStyle: TextStyle(
                        color: AppColors.textFiledHintColor.withOpacity(0.3)),
                    // Set the hint text color
                  ),
                ),
              ),
              SizedBox(
                width: 343,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Set the border radius here
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.primary)),
                  onPressed: () async {
                    try {
                      await authController.signInWithGoogle();
                      if (authController.googleUser?.email
                              .contains('psu.edu.sa') ??
                          false) {
                        authController.emailController.text =
                            authController.googleUser?.email.toString() ?? '';
                        showMessage(
                            title: 'Successfully logged in',
                            color: Colors.green);
                        Get.offAll(() => StudentLanding());
                      } else {
                        authController.emailController.text =
                            authController.googleUser?.email.toString() ?? '';
                        showMessage(
                            title: 'Error',
                            message:
                                'You need to login using PSU Gmail account',
                            duration: 10,
                            color: Colors.red);
                      }
                    } catch (e) {
                      print(e); //hello
                    }
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            height: 30,
                            width: 30,
                            fit: BoxFit.contain,
                            'assets/google_logo.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Login By PSU Email',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
