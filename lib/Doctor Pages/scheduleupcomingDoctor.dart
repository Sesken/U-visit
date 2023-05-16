import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/dashboardDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/schedule-completed.dart';
import 'package:uvisitfinal/utils.dart';

class doctorScheduleUpcomming extends StatelessWidget {
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
              // scheduleupcoming2Ar (170:513)
              padding:
                  EdgeInsets.fromLTRB(25 * fem, 67 * fem, 25 * fem, 120 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30 * fem),
                color: Color(0xffffffff),
                gradient: LinearGradient(
                  begin: Alignment(0, -0.905),
                  end: Alignment(0, 1.05),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupyqsgPvW (HTBfT4VrMX75MCUqSJyQsG)
                    margin: EdgeInsets.fromLTRB(
                        8 * fem, 0 * fem, 100 * fem, 23 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // iconchevronleftiht (170:521)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 29.6 * fem, 0 * fem),
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
                            child: Container(
                              width: 17.4 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/doctor/images/icon-chevron-left-Vjc.png',
                                width: 17.4 * fem,
                                height: 29 * fem,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // scheduleCd4 (170:516)
                          'Schedule',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupdjuy7zv (HTBfZoocLgwNQe3mDPDjuY)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 42 * fem),
                    width: double.infinity,
                    height: 44 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff6ed2a1),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupg5cidCa (HTBfg8xPuZhFW1tZNjg5Ci)
                          width: 156 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff129153),
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
                                color: Color(0xffffffff),
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
                                        doctorScheduleCompleted(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          },
                          child: Container(
                            // autogroupasjaWGN (HTBfjZ2NYNvEpweSE3aSJA)
                            width: 154 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff6ed2a1),
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
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group19zxE (170:528)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 24 * fem),
                    padding: EdgeInsets.fromLTRB(
                        22 * fem, 10 * fem, 10 * fem, 12 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff78f4b7),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouprensVPC (HTBgPhbUWYgta2as3FRENS)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          width: double.infinity,
                          height: 51 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupcndkcTp (HTBgVnFgE3bitAbBRyCNDk)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 8 * fem, 113 * fem, 7 * fem),
                                height: double.infinity,
                                child: FittedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // martincruzMAW (170:531)
                                        'Christine Lopez',
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.1725 * ffem / fem,
                                          color: Color(0xff03502a),
                                        ),
                                      ),
                                      Text(
                                        // patientHpr (170:534)
                                        'Patient',
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725 * ffem / fem,
                                          color: Color(0xff03502a),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // rectangle61Ek6 (170:537)
                                width: 51 * fem,
                                height: 51 * fem,
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
                        Container(
                          // autogroupvswckTY (HTBge2WwKUWJd3AypqVswC)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 3 * fem, 10 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // tZk (170:532)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 52 * fem, 0 * fem),
                                child: Text(
                                  '05/12/2023',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: Color(0xff03502a),
                                  ),
                                ),
                              ),
                              Container(
                                // pm1eN (170:533)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 61 * fem, 0 * fem),
                                child: Text(
                                  '9:00PM',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: Color(0xff03502a),
                                  ),
                                ),
                              ),
                              Text(
                                // confirmedjKU (170:530)
                                'Confirmed',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * ffem / fem,
                                  color: Color(0xff03502a),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouplctgfyp (HTBgmc8e9EVRccCAqMLCTg)
                          width: double.infinity,
                          height: 22 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupjm5g2Ja (HTBgrSKvbrB22Z26NujM5g)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: 123 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff129153),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupkwunWDk (HTBgv24HoadNYJfd5JkWUN)
                                width: 135 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff024f2a),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Reschedule',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
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
                    // group22Qa2 (170:633)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 24 * fem),
                    padding: EdgeInsets.fromLTRB(
                        22 * fem, 10 * fem, 10 * fem, 12 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff78f4b7),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup8ttuJfQ (HTBiJ9RSo2U5KU2VAk8TTU)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          width: double.infinity,
                          height: 51 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupzcr4qfL (HTBiPj6Uomgp58Mr2CZCR4)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 8 * fem, 147 * fem, 7 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // martincruzyWe (170:636)
                                      'Robert Cruz',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff03502a),
                                      ),
                                    ),
                                    Text(
                                      // patientiz2 (170:639)
                                      'Patient',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff03502a),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // rectangle61gAA (170:642)
                                width: 51 * fem,
                                height: 51 * fem,
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
                        Container(
                          // autogroupzvrr1TL (HTBiW95Tf74Nkv9U76Zvrr)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 3 * fem, 10 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // 8Xx (170:637)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 52 * fem, 0 * fem),
                                child: Text(
                                  '05/12/2023',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: Color(0xff03502a),
                                  ),
                                ),
                              ),
                              Container(
                                // pmTaE (170:638)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 61 * fem, 0 * fem),
                                child: Text(
                                  '9:00PM',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: Color(0xff03502a),
                                  ),
                                ),
                              ),
                              Text(
                                // confirmedPTt (170:635)
                                'Confirmed',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * ffem / fem,
                                  color: Color(0xff03502a),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupm4ia8RU (HTBicDjfNbyD549nVpM4iA)
                          width: double.infinity,
                          height: 22 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupxdb4UES (HTBigdmyQvaPWwFaRexDb4)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: 123 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff129153),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroup4awq9bU (HTBijdgydSixsoHKfF4awQ)
                                width: 135 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff024f2a),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Reschedule',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
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
                    // group233Rx (170:681)
                    padding: EdgeInsets.fromLTRB(
                        22 * fem, 10 * fem, 10 * fem, 12 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff78f4b7),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupecfpNDL (HTBhPb6gjUGKvxZ7eQecfp)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          width: double.infinity,
                          height: 51 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupwxunuDG (HTBhV5wXTksP6CweaKWxUn)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 8 * fem, 147 * fem, 7 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // martincruzq6v (170:684)
                                      'Martin Cruz',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff03502a),
                                      ),
                                    ),
                                    Text(
                                      // patientnH4 (170:687)
                                      'Patient',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff03502a),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // rectangle618Lv (170:690)
                                width: 51 * fem,
                                height: 51 * fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  child: Image.asset(
                                    'assets/doctor/images/rectangle-61-QhU.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupkgfg4VU (HTBhbv5UjPKMk4TQGwKgfg)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 3 * fem, 10 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bkJ (170:685)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 52 * fem, 0 * fem),
                                child: Text(
                                  '05/12/2023',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: Color(0xff03502a),
                                  ),
                                ),
                              ),
                              Container(
                                // pmXdx (170:686)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 61 * fem, 0 * fem),
                                child: Text(
                                  '9:00PM',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: Color(0xff03502a),
                                  ),
                                ),
                              ),
                              Text(
                                // confirmedFZx (170:683)
                                'Confirmed',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * ffem / fem,
                                  color: Color(0xff03502a),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupn1t4Ck6 (HTBhj5YD8rE4mZkTfjN1T4)
                          width: double.infinity,
                          height: 22 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupkzdgM7C (HTBhozZgsvXLmvXD8qKZDg)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: 123 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff129153),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupzkied4i (HTBhs5JtNuHbjCVnHxzKie)
                                width: 135 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff024f2a),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Reschedule',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
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
      ),
    );
  }
}
