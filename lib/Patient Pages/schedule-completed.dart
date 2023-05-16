import 'package:flutter/material.dart';

import 'package:uvisitfinal/Patient%20Pages/scheduleupcoming.dart';
import 'package:uvisitfinal/utils.dart';

import 'dashboard.dart';

class patientScheduleCompleted extends StatelessWidget {
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
            // schedulecompletedPM8 (130:230)
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30 * fem),
              color: const Color(0xffffffff),
              gradient: const LinearGradient(
                begin: Alignment(0, -0.905),
                end: Alignment(0, 1.05),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroup492wn8N (HTBQ1656oKCsxB6jrH492W)
                  padding: EdgeInsets.fromLTRB(
                      23 * fem, 67 * fem, 25 * fem, 57 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogrouppkveJ6i (HTBPNc7tWKjt5M4qVxPKve)
                        margin: EdgeInsets.fromLTRB(
                            10 * fem, 0 * fem, 161 * fem, 23 * fem),
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
                              child: GestureDetector(
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
                                  // iconchevronleftdPt (130:242)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 29.6 * fem, 0 * fem),
                                  width: 17.4 * fem,
                                  height: 29 * fem,
                                  child: Image.asset(
                                    'assets/patient/images/icon-chevron-left-xDt.png',
                                    width: 17.4 * fem,
                                    height: 29 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // schedulevNz (130:237)
                              'Schedule',
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
                        // autogrouplskndoC (HTBPWMPytzxNFjygMZLSkN)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 42 * fem),
                        width: double.infinity,
                        height: 44 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff6ed2a1),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
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
                                            const patientScheduleUpcoming(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: Container(
                                // autogroupcn8eXta (HTBPdrBVSJKoeu43SXcN8E)
                                width: 154 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff6ed2a1),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Upcoming',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupxl54DFc (HTBPhBRGnew7PQs6NHxL54)
                              width: 156 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Completed',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group19Viv (130:248)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 23 * fem),
                        width: 310 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupuebgCdL (HTBQpUsoGRGJZ5xt8suEbg)
                              padding: EdgeInsets.fromLTRB(
                                  22 * fem, 10 * fem, 10 * fem, 10 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogrouphvenjNN (HTBQQk4MPdvkTRZQ2ohVEn)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                    width: double.infinity,
                                    height: 51 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupzq3kekE (HTBQWEuC7vXocfwvxiZq3k)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              8 * fem, 115 * fem, 7 * fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                // drquackquackPC2 (130:251)
                                                'Dr. Quack Quack',
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xff03502a),
                                                ),
                                              ),
                                              Text(
                                                // cardiologistiEJ (130:254)
                                                'Cardiologist',
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xff03502a),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          // rectangle61rbQ (130:257)
                                          width: 51 * fem,
                                          height: 51 * fem,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15 * fem),
                                            child: Image.asset(
                                              'assets/patient/images/rectangle-61-ohQ.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupxyirNpe (HTBQduM6E98cCeuwtmxYir)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // u3t (130:252)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 52 * fem, 0 * fem),
                                          child: Text(
                                            '05/12/2023',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xff03502a),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // pmbBc (130:253)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 61 * fem, 0 * fem),
                                          child: Text(
                                            '9:00PM',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xff03502a),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // confirmedWpN (130:250)
                                          'Confirmed',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogrouprusqrdL (HTBQk9fgWZGohcov8arUsQ)
                              width: double.infinity,
                              height: 34 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xff024f2a),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15 * fem),
                                  bottomLeft: Radius.circular(15 * fem),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'COMPLETE',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group20LYW (130:284)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 1 * fem, 23 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupbw5leZC (HTBRgd6v6fdFjd2HtSBW5L)
                              padding: EdgeInsets.fromLTRB(
                                  22 * fem, 10 * fem, 10 * fem, 10 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupewewahk (HTBRHy5zurHaMKuYnSEweW)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                    width: double.infinity,
                                    height: 51 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupytjruzv (HTBRPP6eMgGwvAMFnoYtJr)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              8 * fem, 115 * fem, 7 * fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                // drquackquackr9U (130:287)
                                                'Dr. Quack Quack',
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xff03502a),
                                                ),
                                              ),
                                              Text(
                                                // cardiologistbcr (130:290)
                                                'Cardiologist',
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xff03502a),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          // rectangle618cn (130:292)
                                          width: 51 * fem,
                                          height: 51 * fem,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15 * fem),
                                            child: Image.asset(
                                              'assets/patient/images/rectangle-61-M3L.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupzckeGiz (HTBRVo5dD1eWbx8sshZcke)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // cH4 (130:288)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 52 * fem, 0 * fem),
                                          child: Text(
                                            '05/12/2023',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xff03502a),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // pmj6n (130:289)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 61 * fem, 0 * fem),
                                          child: Text(
                                            '9:00PM',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xff03502a),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // confirmedSWz (130:286)
                                          'Confirmed',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupamcsBUa (HTBRcD4c4M25HjvVxbaMCS)
                              width: double.infinity,
                              height: 34 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xff024f2a),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15 * fem),
                                  bottomLeft: Radius.circular(15 * fem),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'COMPLETE',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group21GW2 (130:294)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 2 * fem, 0 * fem),
                        width: 310 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup5mnnnjG (HTBSaM7jKdgBC13QBL5MNn)
                              padding: EdgeInsets.fromLTRB(
                                  22 * fem, 10 * fem, 10 * fem, 10 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroup3azj8YE (HTBSCGvB82eGxbYSY93azJ)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                    width: double.infinity,
                                    height: 51 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupkwk4fYA (HTBSGwT51j6WBiUiEcKwK4)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              8 * fem, 115 * fem, 7 * fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                // drquackquackPyx (130:297)
                                                'Dr. Quack Quack',
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xff03502a),
                                                ),
                                              ),
                                              Text(
                                                // cardiologistYM4 (130:300)
                                                'Cardiologist',
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xff03502a),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          // rectangle61tfp (130:302)
                                          width: 51 * fem,
                                          height: 51 * fem,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15 * fem),
                                            child: Image.asset(
                                              'assets/patient/images/rectangle-61.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogrouph4eaRve (HTBSPrRDZpAARywHrmh4ea)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // yBU (130:298)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 52 * fem, 0 * fem),
                                          child: Text(
                                            '05/12/2023',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xff03502a),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // pmtZL (130:299)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 61 * fem, 0 * fem),
                                          child: Text(
                                            '9:00PM',
                                            style: SafeGoogleFont(
                                              'Roboto',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725 * ffem / fem,
                                              color: const Color(0xff03502a),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // confirmedpC6 (130:296)
                                          'Confirmed',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupuomgmNE (HTBSVrFDzrTK9hznKwuoMG)
                              width: double.infinity,
                              height: 34 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xff024f2a),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15 * fem),
                                  bottomLeft: Radius.circular(15 * fem),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'COMPLETE',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
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
      ),
    );
  }
}
