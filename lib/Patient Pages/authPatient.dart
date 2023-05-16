import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uvisitfinal/Patient%20Pages/dashboard.dart';
import 'package:uvisitfinal/Patient%20Pages/login_or_register_page.dart';

class patientAuth extends StatelessWidget {
  const patientAuth({Key? key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          // User is logged in, check their role
          String email = snapshot.data!.email!;
          return FutureBuilder<DocumentSnapshot>(
            future: FirebaseFirestore.instance
                .collection('Patient')
                .where('Email', isEqualTo: email)
                .get()
                .then((snapshot) => snapshot.docs.first),
            builder: (context, snapshot) {
              print(email);
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData && snapshot.data!.exists) {
                // User is a patient, redirect to patient dashboard
                return patientDashboard();
              } else {
                // User is not a patient or document does not exist, redirect to login or register page
                return LoginOrRegisterPage();
              }
            },
          );
        } else {
          // User is not logged in, redirect to login or register page
          return LoginOrRegisterPage();
        }
      },
    );
  }
}
