import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/about-usDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/dashboardDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/profileDoctor.dart';
import 'package:uvisitfinal/utils.dart';

import '../role.dart';
import 'doctor_info.dart';

class doctorDropdown extends StatefulWidget {
  @override
  State<doctorDropdown> createState() => _doctorDropdownState();
}

class _doctorDropdownState extends State<doctorDropdown> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String currentDoctorName = 'loading...';
  late String currentDoctorLastName = '';
  late String currentDoctorEmail = '';
  late String currentDoctorSpecialization = '';

  @override
  void initState() {
    super.initState();
    DoctorInfo.getCurrentDoctorInfo().then((doctorInfo) {
      setState(() {
        currentDoctorName = doctorInfo['firstName']!;
        currentDoctorLastName = doctorInfo['lastName']!;
        currentDoctorEmail = doctorInfo['email']!;
        currentDoctorSpecialization = doctorInfo['specialization']!;
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
    return BackButtonHandler(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.infinity,
            child: Container(
              // dropdowndpA (170:715)
              width: double.infinity,
              height: 800 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30 * fem),
                color: const Color(0xffffffff),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xff78f4b7), Colors.white],
                  stops: <double>[0, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    // drrapunzeleDU (170:717)
                    left: 81 * fem,
                    top: 84 * fem,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 141 * fem,
                        height: 30 * fem,
                        child: FittedBox(
                          child: Text(
                            'Dr. $currentDoctorName',
                            style: SafeGoogleFont(
                              'Roboto',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xff129153),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // hellojEv (170:719)
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
                            color: Color(0xff03502a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse3cZc (170:720)
                    left: 25 * fem,
                    top: 64 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 45 * fem,
                        height: 45 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.5 * fem),
                            border: Border.all(color: Color(0xff024f2a)),
                            image: DecorationImage(
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
                  Positioned(
                    // services7WN (170:725)
                    left: 27 * fem,
                    top: 127 * fem,
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
                            color: Color(0xff129153),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // upcomingappointmentscxv (170:726)
                    left: 22 * fem,
                    top: 299 * fem,
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
                            color: Color(0xff129153),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group6iFG (170:727)
                    left: 45 * fem,
                    top: 160 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          37 * fem, 26 * fem, 37.97 * fem, 20.89 * fem),
                      width: 120 * fem,
                      height: 120 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff129153),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // icondoctorQNz (170:729)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 10.91 * fem),
                            width: 45.03 * fem,
                            height: 47.21 * fem,
                            child: Image.asset(
                              'assets/doctor/images/icon-doctor-s5p.png',
                              width: 45.03 * fem,
                              height: 47.21 * fem,
                            ),
                          ),
                          Container(
                            // patienthcz (170:731)
                            margin: EdgeInsets.fromLTRB(
                                0.97 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Patient',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.1725 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group8cjx (170:732)
                    left: 195 * fem,
                    top: 160 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          24.24 * fem, 26 * fem, 25.76 * fem, 20.89 * fem),
                      width: 120 * fem,
                      height: 120 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff129153),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // iconcalendarcheck7gi (170:734)
                            margin: EdgeInsets.fromLTRB(
                                2.51 * fem, 0 * fem, 0 * fem, 10.91 * fem),
                            width: 40.99 * fem,
                            height: 47.21 * fem,
                            child: Image.asset(
                              'assets/doctor/images/icon-calendar-check-7Uz.png',
                              width: 40.99 * fem,
                              height: 47.21 * fem,
                            ),
                          ),
                          Text(
                            // appointment22z (170:736)
                            'Appointment',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Roboto',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group12mFU (170:741)
                    left: 25 * fem,
                    top: 331 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          15.5 * fem, 11 * fem, 8 * fem, 10 * fem),
                      width: 310 * fem,
                      height: 95 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff024f2a),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupmrdqTPC (HTBaEsr2ph6SmP1AAGMRdQ)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 9 * fem, 4 * fem, 5 * fem),
                            width: 208.5 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  // appointmentdateB4J (170:745)
                                  width: double.infinity,
                                  child: Text(
                                    'Appointment Date',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // tuemay15900amJei (170:744)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Tue, May 15 - 9:00 AM',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rectangle24DWn (170:748)
                                  margin: EdgeInsets.fromLTRB(
                                      0.5 * fem, 0 * fem, 0 * fem, 1 * fem),
                                  width: 208 * fem,
                                  height: 1 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xff78f4b7),
                                  ),
                                ),
                                SizedBox(
                                  // martincruzkFp (170:746)
                                  width: double.infinity,
                                  child: Text(
                                    'Christine Lopez',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 17 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // patientt78 (170:747)
                                  width: double.infinity,
                                  child: Text(
                                    'Patient',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // rectangle20ozn (170:743)
                            width: 74 * fem,
                            height: 74 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15 * fem),
                              child: Image.asset(
                                'assets/doctor/images/ellipse-3-bg-gte.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group138nA (170:749)
                    left: 25 * fem,
                    top: 431 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          15.5 * fem, 11 * fem, 8 * fem, 10 * fem),
                      width: 310 * fem,
                      height: 95 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff20754c),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupmbgjghC (HTBacCZqUAbCf4zgVZMbgJ)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 9 * fem, 4 * fem, 5 * fem),
                            width: 208.5 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  // appointmentdatezht (170:753)
                                  width: double.infinity,
                                  child: Text(
                                    'Appointment Date',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // tuemay15900amitn (170:752)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Wed, May 16 - 9:00 AM',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rectangle24SZt (170:756)
                                  margin: EdgeInsets.fromLTRB(
                                      0.5 * fem, 0 * fem, 0 * fem, 1 * fem),
                                  width: 208 * fem,
                                  height: 1 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xff78f4b7),
                                  ),
                                ),
                                SizedBox(
                                  // martincruzyZp (170:754)
                                  width: double.infinity,
                                  child: Text(
                                    'Robert Cruz',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 17 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // patientuTU (170:755)
                                  width: double.infinity,
                                  child: Text(
                                    'Patient',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // rectangle20SyC (170:751)
                            width: 74 * fem,
                            height: 74 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15 * fem),
                              child: Image.asset(
                                'assets/doctor/images/rectangle-20-1oU.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group14PNe (170:757)
                    left: 25 * fem,
                    top: 531 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          15.5 * fem, 11 * fem, 8 * fem, 10 * fem),
                      width: 310 * fem,
                      height: 95 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff20754c),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupbnkgHD8 (HTBayrcRFUYgvQmWX2bNKg)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 9 * fem, 4 * fem, 5 * fem),
                            width: 208.5 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  // appointmentdate1Q2 (170:761)
                                  width: double.infinity,
                                  child: Text(
                                    'Appointment Date',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // tuemay15900amw2n (170:760)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Thu, May 17 - 9:00 AM',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rectangle24F3U (170:764)
                                  margin: EdgeInsets.fromLTRB(
                                      0.5 * fem, 0 * fem, 0 * fem, 1 * fem),
                                  width: 208 * fem,
                                  height: 1 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xff78f4b7),
                                  ),
                                ),
                                SizedBox(
                                  // martincruznJJ (170:762)
                                  width: double.infinity,
                                  child: Text(
                                    'Martin Cruz',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 17 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // patientWzz (170:763)
                                  width: double.infinity,
                                  child: Text(
                                    'Patient',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // rectangle20s4r (170:759)
                            width: 74 * fem,
                            height: 74 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15 * fem),
                              child: Image.asset(
                                'assets/doctor/images/rectangle-20-ziz.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle25oUJ (170:765)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  doctorDashboard(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 360 * fem,
                          height: 800 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30 * fem),
                              color: Color(0x4c969696),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle28XQJ (170:766)
                    left: 316 * fem,
                    top: 71 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 19.09 * fem,
                        height: 19.09 * fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff03502a),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle233dY (170:767)
                    left: 316 * fem,
                    top: 71 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 19.09 * fem,
                        height: 19.09 * fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff03502a),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle24kXx (170:768)
                    left: 0 * fem,
                    top: 92.5 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 360 * fem,
                        height: 83.5 * fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/doctor/images/rectangle-24-S2a.png',
                            width: 360 * fem,
                            height: 83.5 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle26raz (170:769)
                    left: 0 * fem,
                    top: 173 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 360 * fem,
                        height: 45 * fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff129153),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle27yQi (170:770)
                    left: 0 * fem,
                    top: 214 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 360 * fem,
                        height: 45 * fem,
                        child: Image.asset(
                          'assets/doctor/images/rectangle-27-esG.png',
                          width: 360 * fem,
                          height: 45 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // logoutJSz (170:771)
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
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // aboutus16W (170:772)
                    left: 25 * fem,
                    top: 185 * fem,
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  doctorAboutUs(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 62 * fem,
                          height: 18 * fem,
                          child: Text(
                            'About Us',
                            style: SafeGoogleFont(
                              'Roboto',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // myprofile7QS (170:773)
                    left: 25 * fem,
                    top: 142 * fem,
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  doctorProfile(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 71 * fem,
                          height: 18 * fem,
                          child: Text(
                            'My Profile ',
                            style: SafeGoogleFont(
                              'Roboto',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xffffffff),
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
        ),
      ),
    );
  }
}
