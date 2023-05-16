import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/dashboardDoctor.dart';
import 'package:uvisitfinal/utils.dart';

class doctorAboutUs extends StatelessWidget {
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
              // aboutusaeS (168:352)
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
                    // rectangle8G1U (168:353)
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
                    // aboutusj9x (168:356)
                    left: 80 * fem,
                    top: 67 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 91 * fem,
                        height: 30 * fem,
                        child: Text(
                          'About Us',
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
                    // iconchevronleftphC (168:361)
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
                            'assets/doctor/images/icon-chevron-left-8xE.png',
                            width: 17.4 * fem,
                            height: 29 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // component1KP4 (168:363)
                    left: 1 * fem,
                    top: 254 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            360 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 360 * fem,
                        height: 178 * fem,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/doctor/images/n-bg-C9c.png',
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // nXk2 (I168:363;104:113)
                              width: 360 * fem,
                              height: 178 * fem,
                              child: Image.asset(
                                'assets/doctor/images/n-wTt.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // n2gn (I168:363;104:112)
                              width: 360 * fem,
                              height: 178 * fem,
                              child: Image.asset(
                                'assets/doctor/images/n-pna.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // nY9L (I168:363;104:114)
                              width: 360 * fem,
                              height: 178 * fem,
                              child: Image.asset(
                                'assets/doctor/images/n-2H4.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group15Tn6 (168:364)
                    left: 22 * fem,
                    top: 118 * fem,
                    child: Container(
                      width: 310 * fem,
                      height: 126 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup1tt6PQr (HTBq3Y1dFKNpMSu6AY1tt6)
                            margin: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 9 * fem, 13 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // caringwithpassionandcompassion (168:367)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 6 * fem, 9 * fem, 0 * fem),
                                  constraints: BoxConstraints(
                                    maxWidth: 172 * fem,
                                  ),
                                  child: Text(
                                    '“CARING WITH PASSION \nAND COMPASSION BEYOND \nEXPECATION”',
                                    textAlign: TextAlign.right,
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff024f2a),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rectangle33BLi (168:368)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 19 * fem, 1 * fem),
                                  width: 2 * fem,
                                  height: 110 * fem,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff024f2a),
                                  ),
                                ),
                                Container(
                                  // autogroupteh4Wtn (HTBq92rTybysWhHd6StEh4)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // image1qRG (168:366)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 1 * fem, 8 * fem),
                                        width: 69 * fem,
                                        height: 72 * fem,
                                        child: Image.asset(
                                          'assets/doctor/images/image-1-ykz.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // uvisitZcA (168:365)
                                        'U-Visit',
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 25 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.1725 * ffem / fem,
                                          color: const Color(0xff024f2a),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // rectangle35hyG (168:369)
                            width: double.infinity,
                            height: 2 * fem,
                            decoration: const BoxDecoration(
                              color: Color(0xff024f2a),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group14GWa (168:370)
                    left: 1 * fem,
                    top: 451 * fem,
                    child: Container(
                      width: 360 * fem,
                      height: 180 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle35Q6z (168:371)
                            left: 135 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 225 * fem,
                                height: 179 * fem,
                                child: Image.asset(
                                  'assets/doctor/images/rectangle-35-uKU.png',
                                  width: 225 * fem,
                                  height: 179 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle36itN (168:372)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 225 * fem,
                                height: 179 * fem,
                                child: Image.asset(
                                  'assets/doctor/images/rectangle-36-9pi.png',
                                  width: 225 * fem,
                                  height: 179 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // missionqCJ (168:373)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 103 * fem,
                                height: 30 * fem,
                                child: Text(
                                  'MISSION',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 25 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // visionLer (168:374)
                            left: 272 * fem,
                            top: 150 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 82 * fem,
                                height: 30 * fem,
                                child: Text(
                                  'VISION',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 25 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // toprovideexcellenthealthcareby (168:375)
                            left: 206 * fem,
                            top: 55 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 127 * fem,
                                height: 59 * fem,
                                child: Text(
                                  '“To provide excellent health care by upgrading facilities and equipment to be at par if not excel other private institutions in the locality.”',
                                  textAlign: TextAlign.right,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // toprovidegoodpatientcareforthe (168:376)
                            left: 25 * fem,
                            top: 44 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 126 * fem,
                                height: 83 * fem,
                                child: Text(
                                  '“To provide good patient care for the catchment population thru high quality service characterized by relevance, acceptance cost and humaneness as imperative concomitants.”',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle34JtW (168:377)
                    left: 25 * fem,
                    top: 443 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 310 * fem,
                        height: 2 * fem,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff03502a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle35dft (168:378)
                    left: 24 * fem,
                    top: 636 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 310 * fem,
                        height: 2 * fem,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff03502a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group16AA2 (168:379)
                    left: 46 * fem,
                    top: 649 * fem,
                    child: Container(
                      width: 270 * fem,
                      height: 70 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupnltwg8N (HTBqcbtruVcpuMB7fYnLtW)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // visituspEa (168:383)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 12 * fem),
                                  child: Text(
                                    'Visit Us',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff024f2a),
                                    ),
                                  ),
                                ),
                                Container(
                                  // emailus8WA (168:384)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 13 * fem),
                                  child: Text(
                                    'Email Us',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff024f2a),
                                    ),
                                  ),
                                ),
                                Text(
                                  // callusG6a (168:385)
                                  'Call Us',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xff024f2a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupjbjecRL (HTBqrqz8RxpZMwpQXbJbJe)
                            padding: EdgeInsets.fromLTRB(
                                7 * fem, 0 * fem, 0 * fem, 0 * fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // rectangle379gA (168:386)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 17 * fem, 0 * fem),
                                  width: 2 * fem,
                                  height: 66 * fem,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff024f2a),
                                  ),
                                ),
                                Container(
                                  // autogroupb55qgRC (HTBqjS2pB84oZCgsNAb55Q)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // gualbertoavenuerosariobatangas (168:380)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 11 * fem),
                                        child: Text(
                                          'Gualberto Avenue, Rosario, Batangas',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff024f2a),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // untalangenhospitalyahoocomXAv (168:381)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 13 * fem),
                                        child: Text(
                                          'untalangen_hospital@yahoo.com',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff024f2a),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // qBc (168:382)
                                        margin: EdgeInsets.fromLTRB(
                                            1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          '(043) 321 1563 | 09175842643',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff024f2a),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
