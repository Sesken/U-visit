import 'package:flutter/material.dart';

import 'package:uvisitfinal/Patient%20Pages/schedule-completed.dart';
import 'package:uvisitfinal/utils.dart';

import 'dashboard.dart';

class patientScheduleUpcoming extends StatelessWidget {
  const patientScheduleUpcoming({super.key});

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
            // scheduleupcomingCn2 (125:22)
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
                  // autogroup4u4ea1t (HTBJvuBxWYFnKzNPCU4U4E)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 67 * fem, 25 * fem, 55 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupn4cnHBC (HTBJHfkzfRFe7Sq3YFN4cn)
                        margin: EdgeInsets.fromLTRB(
                            8 * fem, 0 * fem, 161 * fem, 23 * fem),
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
                                  // iconchevronleft1N6 (125:35)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 29.6 * fem, 0 * fem),
                                  width: 17.4 * fem,
                                  height: 29 * fem,
                                  child: Image.asset(
                                    'assets/patient/images/icon-chevron-left-K5Y.png',
                                    width: 17.4 * fem,
                                    height: 29 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // schedulei1c (125:30)
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
                        // autogroupzntndeN (HTBJRfXfuUKB55aNAUzNtN)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 42 * fem),
                        width: double.infinity,
                        height: 44 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff6ed2a1),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogrouphu7cYFY (HTBJZ5UzAK4vsphuKuhu7c)
                              width: 156 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            patientScheduleCompleted(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: Container(
                                // autogroupafmg1up (HTBJcaPA5auboAQc6mAfMg)
                                width: 154 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff6ed2a1),
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group19iJS (130:205)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 24 * fem),
                        padding: EdgeInsets.fromLTRB(
                            22 * fem, 10 * fem, 10 * fem, 12 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupo2eacei (HTBKKyMr7efsgMDFvBo2EA)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 22 * fem),
                              width: double.infinity,
                              height: 51 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogrouptmneLqc (HTBKRtMfGEMLofKvTpTMnE)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 8 * fem, 115 * fem, 7 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // drquackquackg8n (130:192)
                                          'Dr. Quack Quack',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                        Text(
                                          // cardiologistcHL (130:194)
                                          'Cardiologist',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    // rectangle61Ygn (130:201)
                                    width: 51 * fem,
                                    height: 51 * fem,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                      child: Image.asset(
                                        'assets/patient/images/rectangle-61-xMk.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupvgzcfWW (HTBKZ3pPfhG3qAcyrcVgZc)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 3 * fem, 10 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // bQA (130:195)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 52 * fem, 0 * fem),
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
                                    // pmWX8 (130:196)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 61 * fem, 0 * fem),
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
                                    // confirmedRPC (130:197)
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
                            SizedBox(
                              // autogroupyccnmT4 (HTBKg8SvnhZ5GFyDKrycCN)
                              width: double.infinity,
                              height: 22 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupqx1lWvS (HTBKmdHmWzA8RWMkFmqx1L)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                    width: 123 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
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
                                  Container(
                                    // autogroups7q2bS6 (HTBKqD28iicUwG1GxAs7Q2)
                                    width: 135 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff024f2a),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Reschedule',
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group206Nr (130:206)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 24 * fem),
                        padding: EdgeInsets.fromLTRB(
                            22 * fem, 10 * fem, 10 * fem, 12 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupmdbunWa (HTBLJn4XecFSKutmXGmDbU)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 22 * fem),
                              width: double.infinity,
                              height: 51 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupdzqsXDG (HTBLQGuNNtrVVAHJTBdZQS)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 8 * fem, 115 * fem, 7 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // drquackquackeYn (130:209)
                                          'Dr. Quack Quack',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                        Text(
                                          // cardiologistCKQ (130:212)
                                          'Cardiologist',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    // rectangle61X6n (130:215)
                                    width: 51 * fem,
                                    height: 51 * fem,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                      child: Image.asset(
                                        'assets/patient/images/rectangle-61-xeJ.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupz5ta358 (HTBLXGhiDSXqKqghztZ5ta)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 3 * fem, 10 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // yDg (130:210)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 52 * fem, 0 * fem),
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
                                    // pmhfU (130:211)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 61 * fem, 0 * fem),
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
                                    // confirmedcnS (130:208)
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
                            SizedBox(
                              // autogroupmp5uAZ4 (HTBLe6qfV4yoyhCThWMp5U)
                              width: double.infinity,
                              height: 22 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupe9tsWsp (HTBLjbgWDMas8wazdRE9tS)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                    width: 123 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
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
                                  Container(
                                    // autogrouplxenbeN (HTBLnbbWRsjSVocjs1LXEn)
                                    width: 135 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff024f2a),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Reschedule',
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group21hSW (130:218)
                        padding: EdgeInsets.fromLTRB(
                            22 * fem, 10 * fem, 10 * fem, 12 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupmsfgzwQ (HTBMFVzM66Sw99wd3kmSFG)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 22 * fem),
                              width: double.infinity,
                              height: 51 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupnah48Gv (HTBMMuyKwRpVpwjF8enAh4)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 8 * fem, 115 * fem, 7 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // drquackquackrii (130:221)
                                          'Dr. Quack Quack',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                        Text(
                                          // cardiologistotr (130:224)
                                          'Cardiologist',
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.1725 * ffem / fem,
                                            color: const Color(0xff03502a),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    // rectangle61xFx (130:227)
                                    width: 51 * fem,
                                    height: 51 * fem,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                      child: Image.asset(
                                        'assets/patient/images/rectangle-61-vRL.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroup9j2aTiW (HTBMUpwUVWtA5DBpkp9J2a)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 3 * fem, 10 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // oGa (130:222)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 52 * fem, 0 * fem),
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
                                    // pm83x (130:223)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 61 * fem, 0 * fem),
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
                                    // confirmedeHC (130:220)
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
                            SizedBox(
                              // autogroup4pwiPEn (HTBMbpjpL4ZVutbEJX4pWi)
                              width: double.infinity,
                              height: 22 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroup2nhljpS (HTBMgjmJ58rmvFMymd2NHL)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                    width: 123 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
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
                                  Container(
                                    // autogroupxkinEFQ (HTBMkuK2G5cuatdHvpxKiN)
                                    width: 135 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff024f2a),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Reschedule',
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
