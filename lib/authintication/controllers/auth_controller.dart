import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  GoogleSignInAccount? googleUser;
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TextEditingController emailController = TextEditingController();
  Future<dynamic> signInWithGoogle() async {
    // Trigger the authentication flow
    googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    print(jsonEncode(googleUser.toString()));

    print(jsonEncode(credential.toString()));

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  String? getGoogleUserID() {
    try {
      // Ensure that a user is signed in
      User? user = _firebaseAuth.currentUser;
      if (user != null) {
        //J6i389dlTUW2tbGZ7VqNygHqvp73
        return user.uid; // Firebase User UID
        //J6i389dlTUW2tbGZ7VqNygHqvp73
      }
    } catch (error) {
      print("Error getting Firebase User UID: $error");
    }
    return null;
  }
}
