import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uvisitfinal/Doctor%20Pages/authDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/log-in-Doctor.dart';

import 'package:uvisitfinal/utils.dart';

import '../my_textfield.dart';
import '../role.dart';

class signUpDoctor extends StatefulWidget {
  final Function()? onTap;
  const signUpDoctor({super.key, this.onTap});

  @override
  State<signUpDoctor> createState() => _signUpDoctorState();
}

class _signUpDoctorState extends State<signUpDoctor> {
  bool showProgress = false;
  bool visible = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _LastNameController = TextEditingController();
  final TextEditingController _SpecializationController =
      TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _LastNameController.dispose();
    _SpecializationController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      if (passwordConfirmed()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        addUserDetails(
          _firstNameController.text.trim(),
          _LastNameController.text.trim(),
          _SpecializationController.text.trim(),
          _emailController.text.trim(),
        );
        Navigator.pop(context); // Dismiss the loading dialog
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  doctorAuth()), // Replace current page with AuthPage
        );
      } else {
        Navigator.pop(context);
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

  Future addUserDetails(String firstName, String LastName,
      String Specialization, String email) async {
    await FirebaseFirestore.instance.collection('Doctor').add({
      'First Name': firstName,
      'Last Name': LastName,
      'Specialization': Specialization,
      'Email': email,
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
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
            // signup96N (6:112)
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
                  // autogroupkngwS5U (HTAvPdaXgNQh6KCCybkNGW)
                  margin:
                      EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 31 * fem),
                  width: double.infinity,
                  height: 144 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupqsnakM4 (HTAvb8FNqhJtyHeENgqSnA)
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
                                // image1gVc (6:113)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                width: 45 * fem,
                                height: 45 * fem,
                                child: Image.asset(
                                  'assets/patient/images/image-1-z4W.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // uvisitoq8 (6:114)
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
                        // autogroupuvm8ix6 (HTAvWxheekYmJeNvDUuVM8)
                        padding: EdgeInsets.fromLTRB(
                            41 * fem, 0 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/patient/images/ellipse-2.png',
                            ),
                          ),
                        ),
                        child: Align(
                          // ellipse1FBL (6:138)
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 103 * fem,
                            height: 101 * fem,
                            child: Image.asset(
                              'assets/patient/images/ellipse-1.png',
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
                  // autogrouptw1lZhp (HTAvphh66VbAgaiurNtW1L)
                  padding: EdgeInsets.fromLTRB(
                      24 * fem, 21 * fem, 24 * fem, 66 * fem),
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
                        // registernowos4 (6:120)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 9 * fem),
                        child: Text(
                          'Register Now! Doc!',
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
                        // createyouraccountandgetstarted (6:121)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        child: Text(
                          'Create your Account and get started.',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff129153),
                          ),
                        ),
                      ),
                      Container(
                        child: MyTextField(
                            controller: _firstNameController,
                            hintText: 'First Name',
                            obscureText: false),
                      ),
                      Container(
                        child: MyTextField(
                            controller: _LastNameController,
                            hintText: 'Last Name',
                            obscureText: false),
                      ),
                      Container(
                        child: MyTextField(
                            controller: _emailController,
                            hintText: 'Email',
                            obscureText: false),
                      ),
                      Container(
                        child: MyTextField(
                            controller: _SpecializationController,
                            hintText: 'Specialization',
                            obscureText: false),
                      ),
                      Container(
                        child: MyTextField(
                            controller: _passwordController,
                            hintText: 'Password',
                            obscureText: true),
                      ),
                      Container(
                        child: MyTextField(
                            controller: _confirmPasswordController,
                            hintText: 'Confirm Password',
                            obscureText: true),
                      ),
                      GestureDetector(
                        onTap: signUp,
                        child: Container(
                          // autogroupqev45fU (HTAwagRovnRbxZqBHfqEV4)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 1 * fem, 23 * fem),
                          width: double.infinity,
                          height: 50 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff129153),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
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
                            'Already have an Account? ',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          logInDoctor(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            child: Text(
                              'Sign In',
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
