import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uvisitfinal/Doctor%20Pages/dashboardDoctor.dart';
import 'package:uvisitfinal/Patient%20Pages/dashboard.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Login form fields
            // ...

            ElevatedButton(
              onPressed: () {
                // Perform sign-in operation
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text('Create an account'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _signUpWithEmailAndPassword(BuildContext context, String email,
      String password, String accountType) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Create a new document for the user in the appropriate collection
      await _firestore
          .collection(accountType)
          .doc(userCredential.user!.uid)
          .set({
        'email': email,
      });

      // User sign-up successful, navigate to appropriate page based on account type
      if (accountType == 'patient') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => patientDashboard()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => doctorDashboard()),
        );
      }
    } catch (e) {
      // Handle sign-up errors
      print('Sign-up error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Sign-up form fields
            // ...

            DropdownButtonFormField<String>(
              value: 'users', // Default account type
              decoration: InputDecoration(labelText: 'Account Type'),
              items: [
                DropdownMenuItem(
                  value: 'patient',
                  child: Text('Patient'),
                ),
                DropdownMenuItem(
                  value: 'doctor',
                  child: Text('Doctor'),
                ),
              ],
              onChanged: (value) {
                // Update the accountType variable
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Perform sign-up operation
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
