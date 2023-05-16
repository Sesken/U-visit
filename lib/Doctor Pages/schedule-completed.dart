import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/dashboardDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/scheduleupcomingDoctor.dart';
import 'package:uvisitfinal/utils.dart';

class doctorScheduleCompleted extends StatelessWidget {
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
              // schedulecompletedPq8 (170:564)
              padding:
                  EdgeInsets.fromLTRB(24 * fem, 67 * fem, 25 * fem, 122 * fem),
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
                    // autogroupuwtgBW6 (HTBjBhmsT5Hdb29wcYuWTg)
                    margin: EdgeInsets.fromLTRB(
                        9 * fem, 0 * fem, 100 * fem, 23 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // iconchevronleftW2a (170:572)
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
                            child: SizedBox(
                              width: 17.4 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/doctor/images/icon-chevron-left-2gW.png',
                                width: 17.4 * fem,
                                height: 29 * fem,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // scheduleAcv (170:567)
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
                    // autogroupgdoc5jt (HTBjJck21AMHqHcXEiGdoC)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 42 * fem),
                    width: double.infinity,
                    height: 44 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff6ed2a1),
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
                                        doctorScheduleCompleted(),
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
                                          doctorScheduleUpcomming(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            child: Container(
                              // autogroupvymgjZY (HTBjQXjq9k2kxbjBnLvyMG)
                              width: 154 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff6ed2a1),
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
                          ),
                        ),
                        Container(
                          // autogroupiy9uopJ (HTBjTn9RDe2P6hbQnZiY9U)
                          width: 156 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff129153),
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
                      ],
                    ),
                  ),
                  Container(
                    // group19tqk (170:579)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 23 * fem),
                    width: 310 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff78f4b7),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouplmzxbEN (HTBkPFcKQEze1kTsTtLmZx)
                          padding: EdgeInsets.fromLTRB(
                              22 * fem, 10 * fem, 10 * fem, 10 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupakzyKgA (HTBjpBj5k4kdTrBqxsaKZY)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                width: double.infinity,
                                height: 51 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupxslaFZp (HTBju6kZV93uUCxbRyXsLA)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 8 * fem, 113 * fem, 7 * fem),
                                      height: double.infinity,
                                      child: FittedBox(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // martincruzarz (170:582)
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
                                              // patientiyC (170:585)
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
                                    SizedBox(
                                      // rectangle62err (170:693)
                                      width: 51 * fem,
                                      height: 51 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
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
                                // autogrouphhugyPL (HTBkBg7GxTUkYN529FhHug)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // JRc (170:583)
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
                                      // pmRWE (170:584)
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
                                      // confirmed9h8 (170:581)
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
                            ],
                          ),
                        ),
                        Container(
                          // autogroupbdysuAW (HTBkJkjp5TmmyTRFcWBDYS)
                          width: double.infinity,
                          height: 34 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff024f2a),
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
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group22PrN (170:695)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 23 * fem),
                    width: 310 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff78f4b7),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouptxruv5c (HTBmNtcwmnj2bSbeJQtxRU)
                          padding: EdgeInsets.fromLTRB(
                              22 * fem, 10 * fem, 10 * fem, 10 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupc16vTLS (HTBkyjcrtDhFefowf9c16v)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                width: double.infinity,
                                height: 51 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupgmanBnE (HTBm4pJjCDDtqrULyLgMAn)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 8 * fem, 147 * fem, 7 * fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            // martincruzvzi (170:698)
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
                                            // patientH4a (170:701)
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
                                    SizedBox(
                                      // rectangle62Rga (170:704)
                                      width: 51 * fem,
                                      height: 51 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
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
                                // autogroupbsevM4S (HTBmBp752kuEgXskX3bsev)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // tKG (170:699)
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
                                      // pmpCv (170:700)
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
                                      // confirmedKQa (170:697)
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
                            ],
                          ),
                        ),
                        Container(
                          // autogroupgdcz4d4 (HTBmHj6tBLahoqzR4gGDCz)
                          width: double.infinity,
                          height: 34 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff024f2a),
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
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group23McA (170:705)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 310 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff78f4b7),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupz5gs52N (HTBnUMoC1TXCi2uFm2Z5gS)
                          padding: EdgeInsets.fromLTRB(
                              22 * fem, 10 * fem, 10 * fem, 10 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupwkokcHC (HTBn5THgyGLUYVx2tPwKok)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                width: double.infinity,
                                height: 51 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupn4ml9Y2 (HTBnB2xiz1ZDJAHPjrN4mL)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 8 * fem, 147 * fem, 7 * fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            // martincruz5Rg (170:708)
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
                                            // patient1q8 (170:711)
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
                                    SizedBox(
                                      // rectangle62Zbk (170:714)
                                      width: 51 * fem,
                                      height: 51 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
                                        child: Image.asset(
                                          'assets/doctor/images/rectangle-62-tqU.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouphbfut8E (HTBnJ2m4pZEZ8qgoHZHbFU)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // DwC (170:709)
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
                                      // pmkw8 (170:710)
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
                                      // confirmedUs8 (170:707)
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
                            ],
                          ),
                        ),
                        Container(
                          // autogroupgjmgELW (HTBnPhGJ7m4yUuxz4ZGjMg)
                          width: double.infinity,
                          height: 34 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff024f2a),
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
          ),
        ),
      ),
    );
  }
}
