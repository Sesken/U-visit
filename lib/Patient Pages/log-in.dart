// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uvisitfinal/my_textfield.dart';
import 'package:uvisitfinal/role.dart';
import 'package:uvisitfinal/utils.dart';

class logInPatient extends StatefulWidget {
  final Function()? onTap;
  const logInPatient({super.key, this.onTap});

  @override
  State<logInPatient> createState() => _logInPatientState();
}

class _logInPatientState extends State<logInPatient> {
  //controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<List<String>> getUserEmails(email) async {
    print('Retrieving user emails...');

    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('Patient')
        .where('Email', isEqualTo: emailController.text.trim())
        .get();

    List<String> emails =
        snapshot.docs.map((doc) => doc['Email'] as String).toList();

    print('User emails retrieved: $emails');
    return emails;
  }

  Future<void> signIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      List<String> userEmails =
          await getUserEmails(emailController.text.trim());
      String enteredEmail = emailController.text.trim();

      if (userEmails.contains(enteredEmail)) {
        // User email exists in the collection
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: enteredEmail,
          password: passwordController.text.trim(),
        );
        Navigator.pop(context);
      } else {
        // User email does not exist in the collection
        Navigator.pop(context);
        showErrorMessage('Invalid email or password.');
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.message);
    }
  }

  void showErrorMessage(message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
        );
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // loginab8 (6:150)
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(30 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // autogroupdtl6rYe (HTBUJdZxz8Q5Z5ADgSdtL6)
                  margin:
                      EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 73 * fem),
                  width: double.infinity,
                  height: 144 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroup1k7qB58 (HTBUXxX6PYqJV8QRPW1k7Q)
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 70 * fem, 60 * fem, 29 * fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            const RoleSelector(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: Container(
                                // image1hJN (6:154)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                width: 45 * fem,
                                height: 45 * fem,
                                child: Image.asset(
                                  'assets/patient/images/image-1-vUW.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // uvisityFt (6:155)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'U-Visit',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 25 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff129153),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupjpneRta (HTBUTHzCVrP5G1U9h2jPne)
                        padding: EdgeInsets.fromLTRB(
                            41 * fem, 0 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/patient/images/ellipse-2-aei.png',
                            ),
                          ),
                        ),
                        child: Align(
                          // ellipse1YCW (138:17)
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 103 * fem,
                            height: 101 * fem,
                            child: Image.asset(
                              'assets/patient/images/ellipse-1-KL2.png',
                              width: 103 * fem,
                              height: 101 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroup3dwtGeJ (HTBUhxESScfDgfqaAo3dwt)
                  padding: EdgeInsets.fromLTRB(
                      24 * fem, 22 * fem, 25 * fem, 66 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30 * fem),
                    gradient: const LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: <Color>[Color(0xff78f4b7), Color(0x00ffd6d6)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // welcomebackK6n (6:165)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 20 * fem),
                        child: Text(
                          'Welcome Back!',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff024f2a),
                          ),
                        ),
                      ),
                      Container(
                        // undrawmyappregxtj11cbg (128:100)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 23 * fem),
                        width: 257 * fem,
                        height: 167 * fem,
                        child: Image.asset(
                          'assets/patient/images/undrawmyappregxtj-1-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Email
                      Container(
                        child: MyTextField(
                            controller: emailController,
                            hintText: 'Email',
                            obscureText: false),
                      ),

                      //Password
                      Container(
                        child: MyTextField(
                            controller: passwordController,
                            hintText: 'Password',
                            obscureText: true),
                      ),

                      Container(
                        // forgotpasswordreS (60:10)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'Forgot Password?',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff02306a),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: signIn,
                        child: Container(
                          // autogroupx1bkkzi (HTBV5wboMm5SKfPhtSX1Bk)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 23 * fem),
                          width: 310 * fem,
                          height: 50 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff129153),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an Account? ',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: widget.onTap,
                            child: Text(
                              'Sign Up',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff02306a),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
