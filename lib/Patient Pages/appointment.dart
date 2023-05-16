import 'package:flutter/material.dart';

import 'package:uvisitfinal/utils.dart';

import 'dashboard.dart';

class patientAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // appointment4sp (118:637)
          width: double.infinity,
          height: 800 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(30 * fem),
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
                // rectangle88Mt (118:638)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 800 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * fem),
                        gradient: LinearGradient(
                          begin: Alignment(0, -0.905),
                          end: Alignment(0, 1.05),
                          colors: <Color>[Color(0xff78f4b7), Colors.white],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // appointmentumx (118:645)
                left: 80 * fem,
                top: 67 * fem,
                child: Align(
                  child: SizedBox(
                    width: 134 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Appointment',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconchevronleftgpe (118:650)
                left: 33 * fem,
                top: 68 * fem,
                child: Align(
                  child: GestureDetector(
                    onTap: () {
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
                    child: SizedBox(
                      width: 17.4 * fem,
                      height: 29 * fem,
                      child: Image.asset(
                        'assets/patient/images/icon-chevron-left-C54.png',
                        width: 17.4 * fem,
                        height: 29 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // cardiologistBFc (118:917)
                left: 148 * fem,
                top: 185 * fem,
                child: Align(
                  child: SizedBox(
                    width: 92 * fem,
                    height: 23 * fem,
                    child: FittedBox(
                      child: Text(
                        'Dermatologist',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // drjasminecruzgCN (118:918)
                left: 148 * fem,
                top: 155 * fem,
                child: Align(
                  child: SizedBox(
                    width: 172 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Dr. Rapunzel Myers',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle50AdL (118:919)
                left: 25 * fem,
                top: 130 * fem,
                child: Align(
                  child: SizedBox(
                    width: 109 * fem,
                    height: 109 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15 * fem),
                      child: Image.asset(
                        'assets/patient/images/rectangle-50.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle51fpz (118:920)
                left: 0 * fem,
                top: 276 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 44 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff03502a),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // mayBYS (118:921)
                left: 158 * fem,
                top: 283 * fem,
                child: Align(
                  child: SizedBox(
                    width: 44 * fem,
                    height: 30 * fem,
                    child: Text(
                      'May',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group18gVC (118:987)
                left: 25 * fem,
                top: 357 * fem,
                child: Container(
                  width: 311 * fem,
                  height: 169 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupku2wQRC (HTBELhWBZx244XFejUku2W)
                        width: double.infinity,
                        height: 27 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // ellipse4kEA (118:977)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                      color: Color(0xff129153),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse5eqL (118:979)
                              left: 47 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                      color: Color(0xff129153),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse6Aog (118:980)
                              left: 95 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                      color: Color(0xff129153),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse7tUn (118:981)
                              left: 141 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                      color: Color(0xff129153),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse81pJ (118:982)
                              left: 187 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                      color: Color(0xff129153),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse99Qi (118:983)
                              left: 237 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                      color: Color(0xff129153),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse10GVL (118:984)
                              left: 284 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                      color: Color(0xff129153),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group17mwt (118:929)
                              left: 8 * fem,
                              top: 1 * fem,
                              child: Container(
                                width: 295 * fem,
                                height: 23 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // sHfL (118:928)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 35 * fem, 0 * fem),
                                      child: Text(
                                        'S',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // mcSi (118:922)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 37 * fem, 0 * fem),
                                      child: Text(
                                        'M',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // tvyC (118:923)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 34 * fem, 0 * fem),
                                      child: Text(
                                        'T',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // wePQ (118:924)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 29 * fem, 0 * fem),
                                      child: Text(
                                        'W',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // thAsY (118:925)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 37 * fem, 0 * fem),
                                      child: Text(
                                        'Th',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // fJTx (118:926)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 38 * fem, 0 * fem),
                                      child: Text(
                                        'F',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // sEMc (118:927)
                                      'S',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupltvwz5t (HTBGLeAzaiQHyD5ontLTvW)
                        padding: EdgeInsets.fromLTRB(
                            5 * fem, 4 * fem, 5 * fem, 0 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // autogroupldci6uc (HTBEmgnYhcar4NqXgiLdci)
                              margin: EdgeInsets.fromLTRB(
                                  50 * fem, 0 * fem, 0 * fem, 7 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // cd4 (118:942)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 40 * fem, 0 * fem),
                                    child: Text(
                                      '1',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // WyL (118:943)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 37 * fem, 0 * fem),
                                    child: Text(
                                      '2',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // r1c (118:941)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 39 * fem, 0 * fem),
                                    child: Text(
                                      '3',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // aCW (118:940)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 40 * fem, 0 * fem),
                                    child: Text(
                                      '4',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // i3p (118:939)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 37 * fem, 0 * fem),
                                    child: Text(
                                      '5',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // dRg (118:938)
                                    '6',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xff6ed2a1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupw4ceBTC (HTBF4G9GAw1h8XwxPzW4CE)
                              margin: EdgeInsets.fromLTRB(
                                  3 * fem, 0 * fem, 0 * fem, 8 * fem),
                              height: 27 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroups45k7Lr (HTBFPFbcsZHLQfULt3s45k)
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 5 * fem, 28 * fem, 4 * fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // RsL (118:945)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 38 * fem, 0 * fem),
                                          child: Text(
                                            '7',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: Color(0xff6ed2a1),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // ZCr (118:950)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 40 * fem, 0 * fem),
                                          child: Text(
                                            '8',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: Color(0xff6ed2a1),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // Hee (118:951)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 33 * fem, 0 * fem),
                                          child: Text(
                                            '9',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: Color(0xff6ed2a1),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // dCi (118:949)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 29 * fem, 0 * fem),
                                          child: Text(
                                            '10',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: Color(0xff6ed2a1),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // ATY (118:948)
                                          '11',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: Color(0xff6ed2a1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupwxbciV4 (HTBFGFoH31bzZz4wLLwXbc)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 25 * fem, 0 * fem),
                                    width: 27 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xff03502a),
                                      borderRadius:
                                          BorderRadius.circular(13.5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '12',
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
                                  Container(
                                    // omQ (118:946)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      '13',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupfepeM2E (HTBFiADnHiwJ6P3uSZfepe)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 12 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // GQ6 (118:953)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 29 * fem, 0 * fem),
                                    child: Text(
                                      '14',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // 16n (118:958)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 31 * fem, 0 * fem),
                                    child: Text(
                                      '15',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // KtA (118:959)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 30 * fem, 0 * fem),
                                    child: Text(
                                      '16',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // evS (118:957)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 29 * fem, 0 * fem),
                                    child: Text(
                                      '17',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Atn (118:956)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 33 * fem, 0 * fem),
                                    child: Text(
                                      '18',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Vw4 (118:955)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 29 * fem, 0 * fem),
                                    child: Text(
                                      '19',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // 2RC (118:954)
                                    '20',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xff6ed2a1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroup56wyBJ6 (HTBFxEefFGufN9oYTX56wY)
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 12 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // VZg (118:961)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 28 * fem, 0 * fem),
                                    child: Text(
                                      '21',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Dka (118:966)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 32 * fem, 0 * fem),
                                    child: Text(
                                      '22',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // xCN (118:967)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 28 * fem, 0 * fem),
                                    child: Text(
                                      '23',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // gPG (118:965)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 31 * fem, 0 * fem),
                                    child: Text(
                                      '24',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // pEa (118:964)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 35 * fem, 0 * fem),
                                    child: Text(
                                      '25',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // 9Xk (118:963)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 27 * fem, 0 * fem),
                                    child: Text(
                                      '26',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // Hdx (118:962)
                                    '27',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xff6ed2a1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupqnu4qfU (HTBG9yp6Fyev2N63dEqNu4)
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // zHU (118:969)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 30 * fem, 0 * fem),
                                    child: Text(
                                      '28',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // iDU (118:974)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 30 * fem, 0 * fem),
                                    child: Text(
                                      '29',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // qot (118:975)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 31 * fem, 0 * fem),
                                    child: Text(
                                      '30',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff6ed2a1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // yfC (118:973)
                                    '31',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xff6ed2a1),
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
                // rectangle528nz (125:11)
                left: 72 * fem,
                top: 554 * fem,
                child: Align(
                  child: SizedBox(
                    width: 216 * fem,
                    height: 41 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle53f2E (125:13)
                left: 56 * fem,
                top: 554 * fem,
                child: Align(
                  child: SizedBox(
                    width: 246 * fem,
                    height: 50 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15 * fem),
                        color: Color(0xff60e6a5),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle55NxE (125:20)
                left: 83 * fem,
                top: 631 * fem,
                child: Align(
                  child: SizedBox(
                    width: 192 * fem,
                    height: 39 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10 * fem),
                          color: Color(0xff024f2a),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // booknowUVU (125:21)
                left: 123 * fem,
                top: 636 * fem,
                child: Align(
                  child: SizedBox(
                    width: 114 * fem,
                    height: 30 * fem,
                    child: Text(
                      'BOOK NOW',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // amaYW (125:17)
                left: 139 * fem,
                top: 565 * fem,
                child: Align(
                  child: SizedBox(
                    width: 81 * fem,
                    height: 30 * fem,
                    child: Text(
                      '9:00 AM',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle54sXc (125:14)
                left: 72 * fem,
                top: 610 * fem,
                child: Align(
                  child: SizedBox(
                    width: 216 * fem,
                    height: 41 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconchevronleftzcE (118:932)
                left: 30 * fem,
                top: 287 * fem,
                child: Align(
                  child: SizedBox(
                    width: 12.75 * fem,
                    height: 21.01 * fem,
                    child: Image.asset(
                      'assets/patient/images/icon-chevron-left-GTY.png',
                      width: 12.75 * fem,
                      height: 21.01 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconchevronrightVYz (118:935)
                left: 320 * fem,
                top: 287 * fem,
                child: Align(
                  child: SizedBox(
                    width: 12.84 * fem,
                    height: 21.16 * fem,
                    child: Image.asset(
                      'assets/patient/images/icon-chevron-right-UGN.png',
                      width: 12.84 * fem,
                      height: 21.16 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconchevronrightoJn (125:18)
                left: 269 * fem,
                top: 574 * fem,
                child: Align(
                  child: SizedBox(
                    width: 21.16 * fem,
                    height: 12.84 * fem,
                    child: Image.asset(
                      'assets/patient/images/icon-chevron-right.png',
                      width: 21.16 * fem,
                      height: 12.84 * fem,
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
