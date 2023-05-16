import 'package:flutter/material.dart';
import 'package:uvisitfinal/Patient%20Pages/edit-profilePatient.dart';

import 'package:uvisitfinal/utils.dart';

import 'PatientInfo.dart';
import 'dashboard.dart';

class patientProfile extends StatefulWidget {
  @override
  State<patientProfile> createState() => _patientProfileState();
}

class _patientProfileState extends State<patientProfile> {
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
            // profileSXG (92:232)
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30 * fem),
              color: const Color(0xffffffff),
              gradient: const LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 1),
                colors: <Color>[Color(0xff78f4b8), Colors.white],
                stops: <double>[0, 0.553],
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroup7x2nedL (HTB4FeygLkjAYfbzMd7X2n)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 67 * fem, 25 * fem, 110 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupe9h8N3Y (HTB3tVvGGCTmqoW7sRE9H8)
                        margin: EdgeInsets.fromLTRB(
                            8 * fem, 0 * fem, 193 * fem, 18 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            patientDashboard(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: Container(
                                // iconchevronlefth5p (92:309)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 29.6 * fem, 0 * fem),
                                width: 17.4 * fem,
                                height: 29 * fem,
                                child: Image.asset(
                                  'assets/patient/images/icon-chevron-left-bDY.png',
                                  width: 17.4 * fem,
                                  height: 29 * fem,
                                ),
                              ),
                            ),
                            Text(
                              // profilezKp (92:311)
                              'Profile',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // ellipse3KN6 (92:241)
                        margin: EdgeInsets.fromLTRB(
                            90 * fem, 0 * fem, 91 * fem, 16 * fem),
                        width: double.infinity,
                        height: 129 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(64.5 * fem),
                          border: Border.all(color: const Color(0xff03502a)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/Icons/proflie.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // christinelopezp3x (92:234)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 12 * fem),
                        child: FittedBox(
                          child: Text(
                            '$currentUserName $currentUserLastName',
                            style: SafeGoogleFont(
                              'Roboto',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1725 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  patientEditProfile(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: Container(
                          // autogroupzgh47Hx (HTB3zfQfG9zHkMTGBgZgH4)
                          margin: EdgeInsets.fromLTRB(
                              88 * fem, 0 * fem, 92 * fem, 16 * fem),
                          width: double.infinity,
                          height: 23 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff129153),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Edit Profile',
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.1725 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        // group13ZQr (103:50)
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // rectangle28JtE (103:41)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 17 * fem),
                              width: double.infinity,
                              height: 2 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xff03502a),
                              ),
                            ),
                            SizedBox(
                              // autogroupeopcRxr (HTB4mZHXDVbEYsxcmxeoPc)
                              height: 265 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroupxkfuBBL (HTB5ENrAbFh3bpLg3AXKFU)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 9 * fem, 0 * fem),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // address6p6 (100:26)
                                          'Address',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22 * fem,
                                        ),
                                        Text(
                                          // emailRbU (100:39)
                                          'Email',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22 * fem,
                                        ),
                                        Text(
                                          // contactnoA3G (100:40)
                                          'Contact No.',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22 * fem,
                                        ),
                                        Text(
                                          // genderg1c (100:10)
                                          'Gender',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22 * fem,
                                        ),
                                        Text(
                                          // ageoc2 (100:11)
                                          'Age',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22 * fem,
                                        ),
                                        Text(
                                          // weightwiE (100:12)
                                          'Weight',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22 * fem,
                                        ),
                                        Text(
                                          // heightH1Q (100:13)
                                          'Height',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // rectangle29EBY (103:42)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 19 * fem, 0 * fem),
                                    width: 2 * fem,
                                    height: 265 * fem,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff03502a),
                                    ),
                                  ),
                                  Container(
                                    // autogroupwkraxtE (HTB5VHazPPpEoiYaHZWkra)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 7 * fem, 0 * fem, 3 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // lipacitybatangasVNN (103:43)
                                          'Lipa City, Batangas',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25 * fem,
                                        ),
                                        Text(
                                          // clopezgmailcomotr (103:44)
                                          currentUserEmail,
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25 * fem,
                                        ),
                                        Text(
                                          // Y5k (103:45)
                                          '091512345678',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25 * fem,
                                        ),
                                        Text(
                                          // femalefgA (103:46)
                                          'Female',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25 * fem,
                                        ),
                                        Text(
                                          // yrsoldCvz (103:47)
                                          '24 yrs old',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25 * fem,
                                        ),
                                        Text(
                                          // kgXTU (103:48)
                                          '45kg',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25 * fem,
                                        ),
                                        Text(
                                          // cmrke (103:49)
                                          '160cm',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff000000),
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
