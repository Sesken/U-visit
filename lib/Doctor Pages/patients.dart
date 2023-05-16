import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/dashboardDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/patients-details.dart';
import 'package:uvisitfinal/utils.dart';

class doctorPatients extends StatelessWidget {
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
              // patientsCfQ (166:11)
              width: double.infinity,
              height: 800 * fem,
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
              child: Stack(
                children: [
                  Positioned(
                    // rectangle8gKg (166:12)
                    left: 1 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 360 * fem,
                        height: 800 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30 * fem),
                            gradient: const LinearGradient(
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[
                                Color(0xff78f4b7),
                                Color(0x00ffd6d6)
                              ],
                              stops: <double>[0, 1],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // patientsLv2 (166:23)
                    left: 81 * fem,
                    top: 67 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 82 * fem,
                        height: 30 * fem,
                        child: Text(
                          'Patients',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconchevronleft2nr (166:28)
                    left: 33 * fem,
                    top: 68 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 17.4 * fem,
                        height: 29 * fem,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        doctorDashboard(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/doctor/images/icon-chevron-left-SF8.png',
                            width: 17.4 * fem,
                            height: 29 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group16i9t (166:90)
                    left: 25 * fem,
                    top: 120 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                doctorPatientDetails(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            13 * fem, 10 * fem, 35 * fem, 11 * fem),
                        width: 310 * fem,
                        height: 95 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff129153),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle20NkE (166:92)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 11.5 * fem, 0 * fem),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            doctorPatientDetails(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: Container(
                                // autogroupk4bpJ86 (HTBbUbHY9noCcqta1kK4bp)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 14 * fem, 0 * fem, 17 * fem),
                                width: 176.5 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // autogroupucdldAN (HTBbZ6A3Ua24f8wBs8UcdL)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      width: double.infinity,
                                      height: 24 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // martincruzZ42 (166:93)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 150 * fem,
                                                height: 24 * fem,
                                                child: Text(
                                                  'Christine Lopez',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'Roboto',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.1725 * ffem / fem,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // rectangle24eLN (166:85)
                                            left: 0.5 * fem,
                                            top: 23 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 176 * fem,
                                                height: 1 * fem,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(0xff78f4b7),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // rosariobatangascityAJi (166:94)
                                      width: double.infinity,
                                      child: Text(
                                        'Lipa City, Batangas',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w300,
                                          height: 1.1725 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
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
                  Positioned(
                    // group17GsY (166:110)
                    left: 26 * fem,
                    top: 227 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            13 * fem, 10 * fem, 35 * fem, 11 * fem),
                        width: 310 * fem,
                        height: 95 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff129153),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle20YKG (166:112)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 12 * fem, 0 * fem),
                              width: 74 * fem,
                              height: 74 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15 * fem),
                                child: Image.asset(
                                  'assets/doctor/images/rectangle-20-CbQ.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // autogroupxfrwedC (HTBbnfbkjNJLNS1sLpXfrW)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 14 * fem, 0 * fem, 16 * fem),
                              width: 176 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogrouptdhyaWr (HTBbrq9UvK4U35HBW2TdHY)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                    width: double.infinity,
                                    height: 24 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // chrisreyesVti (166:113)
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 107 * fem,
                                              height: 24 * fem,
                                              child: Text(
                                                'Chris Reyes',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle2416N (166:115)
                                          left: 0 * fem,
                                          top: 23 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 176 * fem,
                                              height: 1 * fem,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Color(0xff78f4b7),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // talisaybatangascityvj8 (166:114)
                                    width: double.infinity,
                                    child: Text(
                                      'Talisay, Batangas City',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w300,
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
                    ),
                  ),
                  Positioned(
                    // group18ef8 (166:116)
                    left: 27 * fem,
                    top: 334 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            13 * fem, 10 * fem, 35 * fem, 11 * fem),
                        width: 310 * fem,
                        height: 95 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff129153),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle208qC (166:118)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 12 * fem, 0 * fem),
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
                            Container(
                              // autogroupotjgrFQ (HTBc5QcrmbxYdR1wuBotjG)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 14 * fem, 0 * fem, 16 * fem),
                              width: 176 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroup9rjcPWE (HTBcBa7FmZV4Xxy6DT9RjC)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                    width: double.infinity,
                                    height: 24 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // robertcruzXMY (166:119)
                                          left: 1 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 108 * fem,
                                              height: 24 * fem,
                                              child: Text(
                                                'Robert Cruz',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle24E14 (166:121)
                                          left: 0 * fem,
                                          top: 23 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 176 * fem,
                                              height: 1 * fem,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Color(0xff78f4b7),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // taalbatangascityM5g (166:120)
                                    width: double.infinity,
                                    child: Text(
                                      'Taal, Batangas City',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w300,
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
                    ),
                  ),
                  Positioned(
                    // group19gdk (166:122)
                    left: 28 * fem,
                    top: 441 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            13 * fem, 10 * fem, 35 * fem, 11 * fem),
                        width: 310 * fem,
                        height: 95 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff129153),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle20A38 (166:124)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 12 * fem, 0 * fem),
                              width: 74 * fem,
                              height: 74 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15 * fem),
                                child: Image.asset(
                                  'assets/doctor/images/rectangle-20-JLv.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // autogroupmjy6sy8 (HTBcPESVVocdbmJmTdMJY6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 14 * fem, 0 * fem, 16 * fem),
                              width: 176 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroupq4gn1ZY (HTBcTZecFfc8TETjTvQ4GN)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                    width: double.infinity,
                                    height: 24 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // maxinelopezYpN (166:125)
                                          left: 0.5 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 126 * fem,
                                              height: 24 * fem,
                                              child: Text(
                                                'Maxine Lopez',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle24Fyg (166:127)
                                          left: 0 * fem,
                                          top: 23 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 176 * fem,
                                              height: 1 * fem,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Color(0xff78f4b7),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // nasugbubatangascityxdC (166:126)
                                    width: double.infinity,
                                    child: Text(
                                      'Nasugbu, Batangas City',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w300,
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
                    ),
                  ),
                  Positioned(
                    // group20Vd8 (166:128)
                    left: 29 * fem,
                    top: 548 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            13 * fem, 10 * fem, 35 * fem, 11 * fem),
                        width: 310 * fem,
                        height: 95 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff129153),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle20yHQ (166:130)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 12 * fem, 0 * fem),
                              width: 74 * fem,
                              height: 74 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15 * fem),
                                child: Image.asset(
                                  'assets/doctor/images/rectangle-20-jgJ.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // autogrouph92vtvA (HTBceeAUzhRvN9BdFHh92v)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 14 * fem, 0 * fem, 17 * fem),
                              width: 176 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroupd6txq4i (HTBcioiDBeC42nSwQVd6Tx)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                    width: double.infinity,
                                    height: 24 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // kathsottoNKY (166:131)
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 95 * fem,
                                              height: 24 * fem,
                                              child: Text(
                                                'Kath Sotto',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle24s1Q (166:133)
                                          left: 0 * fem,
                                          top: 23 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 176 * fem,
                                              height: 1 * fem,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Color(0xff78f4b7),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // lipabatangascityPVY (166:132)
                                    width: double.infinity,
                                    child: Text(
                                      'Lipa, Batangas City',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w300,
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
