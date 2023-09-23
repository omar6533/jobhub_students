import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/widgets.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/binding_controller.dart';
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Login to JobHub using your PSU Google account',
            ),
            GestureDetector(
              onTap: () async {
                await authController.signInWithGoogle();
              },
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                          'assets/google_logo.png')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
