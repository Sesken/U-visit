import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uvisitfinal/Patient%20Pages/about-us.dart';
import 'package:uvisitfinal/Patient%20Pages/profile.dart';
import 'package:uvisitfinal/role.dart';

import 'package:uvisitfinal/utils.dart';

import 'PatientInfo.dart';
import 'dashboard.dart';

class patientDropdown extends StatefulWidget {
  @override
  State<patientDropdown> createState() => _patientDropdownState();
}

class _patientDropdownState extends State<patientDropdown> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String currentUserName = 'loading...';
  late String currentUserLastName = '';
  late String currentUserEmail = '';

  @override
  void initState() {
    super.initState();
    PatientInfo.getCurrentUserInfo().then((userInfo) {
      setState(() {
        currentUserName = userInfo['firstName']!;
        currentUserLastName = userInfo['lastName']!;
        currentUserEmail = userInfo['email']!;
      });
    });
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await _auth.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RoleSelector()),
      );
    } catch (e) {
      // Handle sign-out errors
      print('Sign-out error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // dropdownvuL (130:102)
          width: double.infinity,
          height: 800 * fem,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30 * fem),
            color: const Color(0xffffffff),
            gradient: const LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0xff78f4b7), Colors.white],
              stops: <double>[0, 1],
            ),
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
          child: Stack(
            children: [
              Positioned(
                // christineMdG (130:104)
                left: 81 * fem,
                top: 84 * fem,
                child: Align(
                  child: SizedBox(
                    width: 102 * fem,
                    height: 30 * fem,
                    child: Text(
                      currentUserName,
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.1725 * ffem / fem,
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle3cZC (130:109)
                left: 0 * fem,
                top: 735 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 65 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * fem),
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // helloiML (130:110)
                left: 80.5 * fem,
                top: 60 * fem,
                child: Align(
                  child: SizedBox(
                    width: 42 * fem,
                    height: 23 * fem,
                    child: Text(
                      'Hello!',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff03502a),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse3odg (130:111)
                left: 25 * fem,
                top: 64 * fem,
                child: Align(
                  child: SizedBox(
                    width: 45 * fem,
                    height: 45 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.5 * fem),
                          border: Border.all(color: const Color(0xff024f2a)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/Icons/proflie.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // primaryTTL (130:112)
                left: 89 * fem,
                top: 760 * fem,
                child: Align(
                  child: SizedBox(
                    width: 18 * fem,
                    height: 18 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/patient/images/primary-uaE.png',
                        width: 18 * fem,
                        height: 18 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // primaryxez (130:113)
                left: 172 * fem,
                top: 760 * fem,
                child: Align(
                  child: SizedBox(
                    width: 18 * fem,
                    height: 18 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/patient/images/primary-Fyg.png',
                        width: 18 * fem,
                        height: 18 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconuserFtz (130:114)
                left: 255 * fem,
                top: 760 * fem,
                child: Align(
                  child: SizedBox(
                    width: 18 * fem,
                    height: 18 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/patient/images/icon-user-n8n.png',
                        width: 18 * fem,
                        height: 18 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle10xHc (130:116)
                left: 25 * fem,
                top: 132 * fem,
                child: Align(
                  child: SizedBox(
                    width: 310 * fem,
                    height: 41 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // search57L (130:117)
                left: 47 * fem,
                top: 143 * fem,
                child: Align(
                  child: SizedBox(
                    width: 47 * fem,
                    height: 18 * fem,
                    child: Text(
                      'Search',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.1725 * ffem / fem,
                        color: const Color(0xff969696),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconsearchN6S (130:118)
                left: 304 * fem,
                top: 142 * fem,
                child: Align(
                  child: SizedBox(
                    width: 20 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/patient/images/icon-search.png',
                      width: 20 * fem,
                      height: 20 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // servicesGSi (130:120)
                left: 27 * fem,
                top: 201 * fem,
                child: Align(
                  child: SizedBox(
                    width: 59 * fem,
                    height: 18 * fem,
                    child: Text(
                      'Services',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.1725 * ffem / fem,
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group1mPU (130:121)
                left: 25 * fem,
                top: 379 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      22 * fem, 18 * fem, 15 * fem, 19 * fem),
                  width: 310 * fem,
                  height: 148 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xff78f4b7),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupsbneqPL (HTB2XCs47LmtzmbX1RSBnE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 5 * fem, 17 * fem, 5 * fem),
                        width: 138 * fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // getthebestmedicalservicegsQ (90:24)
                              constraints: BoxConstraints(
                                maxWidth: 115 * fem,
                              ),
                              child: Text(
                                'Get the Best \nMedical Service',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff024f2a),
                                ),
                              ),
                            ),
                            Container(
                              // rectangle19yLi (90:26)
                              width: double.infinity,
                              height: 3 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xff129153),
                              ),
                            ),
                            SizedBox(
                              height: 0 * fem,
                            ),
                            Container(
                              // loremipsumdolorsitametconsecte (90:25)

                              child: Text(
                                'We offer a wide range of specialized services, including state-of-the-art facilities, advanced medical technologies, and comprehensive care. From preventive care and diagnostics to advanced surgical procedures and rehabilitation, we meet the diverse healthcare needs of our patients.',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 8 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff024f2a),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        // undrawdoctorkw5l11F5g (130:126)
                        width: 118 * fem,
                        height: 111 * fem,
                        child: Image.asset(
                          'assets/patient/images/undrawdoctorkw5l-1-1-hCz.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // upcomingappointmentsNvz (130:127)
                left: 27 * fem,
                top: 565 * fem,
                child: Align(
                  child: SizedBox(
                    width: 168 * fem,
                    height: 18 * fem,
                    child: Text(
                      'Upcoming Appointments',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.1725 * ffem / fem,
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // frame10t8e (130:129)
                left: 25 * fem,
                top: 597 * fem,
                child: SizedBox(
                  width: 420 * fem,
                  height: 95 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group9R8a (130:130)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 20 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 11 * fem, 15.5 * fem, 10 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff024f2a),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupwqq6upS (HTB2pN38ZsWXDpKjBWWQQ6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8.5 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  14 * fem, 18 * fem, 13 * fem, 18 * fem),
                              width: 54 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                // tue1ca (130:133)
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 27 * fem,
                                    ),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.1725 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                        children: [
                                          const TextSpan(
                                            text: '12\n',
                                          ),
                                          TextSpan(
                                            text: 'Tue',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupsmq8LHU (HTB2tXarkpGetTb3LiSMq8)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 12 * fem, 0 * fem, 12 * fem),
                              width: 112 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    // amNEA (130:134)
                                    width: double.infinity,
                                    child: Text(
                                      '9:00 am',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4 * fem,
                                  ),
                                  SizedBox(
                                    // drquackquackTmQ (130:136)
                                    width: double.infinity,
                                    child: Text(
                                      'Dr. Myers',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4 * fem,
                                  ),
                                  SizedBox(
                                    // cardiologistxTG (130:135)
                                    width: double.infinity,
                                    child: Text(
                                      'Dermatologist',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group10Xen (130:137)
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 11 * fem, 15.5 * fem, 10 * fem),
                        width: 200 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup5qywzHU (HTB38wLWrChkXt7z3r5QYW)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8.5 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  18 * fem, 18 * fem, 17 * fem, 18 * fem),
                              width: 54 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                // friSfG (130:143)
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 19 * fem,
                                    ),
                                    child: Text(
                                      '15\nFri',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupey5pjuG (HTB3Cbu5LPmne3iLfney5p)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 12 * fem, 0 * fem, 12 * fem),
                              width: 112 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    // amsVg (130:140)
                                    width: double.infinity,
                                    child: Text(
                                      '9:00 am',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4 * fem,
                                  ),
                                  SizedBox(
                                    // drquackquackPiv (130:142)
                                    width: double.infinity,
                                    child: Text(
                                      'Dr. Quack Quack',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4 * fem,
                                  ),
                                  SizedBox(
                                    // cardiologistJqt (130:141)
                                    width: double.infinity,
                                    child: Text(
                                      'Cardiologist',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // frame7SBQ (130:144)
                left: 5 * fem,
                top: 233 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: 355 * fem,
                  height: 107 * fem,
                  child: SizedBox(
                    // frame8M3U (130:145)
                    width: 439 * fem,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            // group4HSv (130:146)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  17 * fem, 23 * fem, 17 * fem, 17 * fem),
                              width: 79 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // iconmedicalnotesNzA (130:148)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 21.83 * fem),
                                    width: 25 * fem,
                                    height: 30.17 * fem,
                                    child: Image.asset(
                                      'assets/patient/images/icon-medical-notes-ohx.png',
                                      width: 25 * fem,
                                      height: 30.17 * fem,
                                    ),
                                  ),
                                  Text(
                                    // recordsgV4 (130:150)
                                    'Records',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 11 * fem,
                          ),
                          Container(
                            // group51GS (130:151)
                            padding: EdgeInsets.fromLTRB(
                                6 * fem, 23 * fem, 7 * fem, 17 * fem),
                            width: 79 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xff129153),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // iconpills86A (130:153)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                  width: 38 * fem,
                                  height: 30 * fem,
                                  child: Image.asset(
                                    'assets/patient/images/icon-pills-uhx.png',
                                    width: 38 * fem,
                                    height: 30 * fem,
                                  ),
                                ),
                                Text(
                                  // prescription2hL (130:155)
                                  'Prescription',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 11 * fem,
                          ),
                          TextButton(
                            // group6wpJ (130:156)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  18 * fem, 23 * fem, 18 * fem, 17 * fem),
                              width: 79 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // icondoctordx2 (130:158)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 1 * fem, 22 * fem),
                                    width: 28 * fem,
                                    height: 30 * fem,
                                    child: Image.asset(
                                      'assets/patient/images/icon-doctor-Au4.png',
                                      width: 28 * fem,
                                      height: 30 * fem,
                                    ),
                                  ),
                                  Text(
                                    // doctorsr46 (130:160)
                                    'Doctors',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 11 * fem,
                          ),
                          TextButton(
                            // group7mgr (130:161)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  20 * fem, 23 * fem, 19 * fem, 17 * fem),
                              width: 79 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // vectorULN (130:163)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                    width: 40 * fem,
                                    height: 30 * fem,
                                    child: Image.asset(
                                      'assets/patient/images/vector.png',
                                      width: 40 * fem,
                                      height: 30 * fem,
                                    ),
                                  ),
                                  Container(
                                    // billingbft (130:164)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                    child: Text(
                                      'Billing',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 11 * fem,
                          ),
                          TextButton(
                            // group86sY (130:165)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  4 * fem, 23 * fem, 5 * fem, 17 * fem),
                              width: 79 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // iconcalendarcheckomx (130:167)
                                    margin: EdgeInsets.fromLTRB(
                                        1 * fem, 0 * fem, 0 * fem, 22 * fem),
                                    width: 25 * fem,
                                    height: 30 * fem,
                                    child: Image.asset(
                                      'assets/patient/images/icon-calendar-check.png',
                                      width: 25 * fem,
                                      height: 30 * fem,
                                    ),
                                  ),
                                  Text(
                                    // appointmentJyc (130:169)
                                    'Appointment',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle25TLi (92:226)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 800 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                patientDashboard(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30 * fem),
                          color: const Color(0x4c969696),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle23Wpn (92:210)
                left: 315.9999847412 * fem,
                top: 71 * fem,
                child: Align(
                  child: SizedBox(
                    width: 19.09 * fem,
                    height: 19.09 * fem,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff03502a),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle23RRx (92:211)
                left: 316 * fem,
                top: 71 * fem,
                child: Align(
                  child: SizedBox(
                    width: 19.09 * fem,
                    height: 19.09 * fem,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff03502a),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle24kDL (92:217)
                left: 0 * fem,
                top: 92.5 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 83.5 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                patientProfile(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/patient/images/rectangle-24.png',
                        width: 360 * fem,
                        height: 83.5 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle264Uv (92:227)
                left: 0 * fem,
                top: 173 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 45 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                patientAboutUs(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff129153),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle27yrn (92:230)
                left: 0 * fem,
                top: 214 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 45 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/patient/images/rectangle-27.png',
                        width: 360 * fem,
                        height: 45 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // logoutV4S (92:222)
                left: 25 * fem,
                top: 224 * fem,
                child: Align(
                  child: SizedBox(
                    width: 47 * fem,
                    height: 18 * fem,
                    child: TextButton(
                      onPressed: () {
                        _signOut(context);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Logout',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // aboutusN8E (92:223)
                left: 25 * fem,
                top: 185 * fem,
                child: Align(
                  child: SizedBox(
                    width: 62 * fem,
                    height: 18 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                patientAboutUs(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'About Us',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // myprofilerZC (92:225)
                left: 25 * fem,
                top: 142 * fem,
                child: Align(
                  child: SizedBox(
                    width: 71 * fem,
                    height: 18 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                patientProfile(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'My Profile ',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
