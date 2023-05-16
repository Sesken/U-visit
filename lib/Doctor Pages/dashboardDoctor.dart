import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/dropdownDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/patients.dart';
import 'package:uvisitfinal/Doctor%20Pages/profileDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/scheduleupcomingDoctor.dart';
import 'package:uvisitfinal/utils.dart';

import 'doctor_info.dart';

class doctorDashboard extends StatefulWidget {
  @override
  State<doctorDashboard> createState() => _doctorDashboardState();
}

class _doctorDashboardState extends State<doctorDashboard> {
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
              // dashboardBw4 (134:12)
              padding:
                  EdgeInsets.fromLTRB(22 * fem, 60 * fem, 25 * fem, 174 * fem),
              width: double.infinity,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupjvvyYQE (HTBXrwortnHzDhcsPDJVVY)
                    margin: EdgeInsets.fromLTRB(
                        3 * fem, 0 * fem, 0 * fem, 13 * fem),
                    height: 54 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse3T1Q (134:17)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10.5 * fem, 1 * fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          doctorProfile(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 45 * fem,
                              height: 45 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.5 * fem),
                                border:
                                    Border.all(color: const Color(0xff024f2a)),
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
                        Container(
                          // autogroupaqsqv9t (HTBXzSbNS5fRcrhEUBaQsQ)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 45 * fem, 0 * fem),
                          width: 140.5 * fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // helloFCA (134:16)
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
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
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  // drrapunzelkuc (134:14)
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
                                        color: const Color(0xff129153),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group11fmg (134:76)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 12 * fem, 0 * fem, 23 * fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          doctorDropdown(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: 22 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle23xkn (134:77)
                                    width: double.infinity,
                                    height: 5 * fem,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff03502a),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2 * fem,
                                  ),
                                  Container(
                                    // rectangle236c6 (134:79)
                                    width: double.infinity,
                                    height: 5 * fem,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff03502a),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2 * fem,
                                  ),
                                  Container(
                                    // rectangle23SR4 (134:78)
                                    width: double.infinity,
                                    height: 5 * fem,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff03502a),
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
                  Container(
                    // servicesbHx (134:26)
                    margin: EdgeInsets.fromLTRB(
                        5 * fem, 0 * fem, 0 * fem, 15 * fem),
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
                  Container(
                    // autogroup1tgnVu8 (HTBYCSFPJAFj4JpDQY1tGn)
                    margin: EdgeInsets.fromLTRB(
                        23 * fem, 0 * fem, 20 * fem, 19 * fem),
                    width: double.infinity,
                    height: 120 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group6dEe (134:62)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 30 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          doctorPatients(),
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
                                  37 * fem, 26 * fem, 37.97 * fem, 20.89 * fem),
                              width: 120 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff129153),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // icondoctorV1x (134:64)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 10.91 * fem),
                                    width: 45.03 * fem,
                                    height: 47.21 * fem,
                                    child: Image.asset(
                                      'assets/doctor/images/icon-doctor-xKx.png',
                                      width: 45.03 * fem,
                                      height: 47.21 * fem,
                                    ),
                                  ),
                                  Container(
                                    // patiento2e (134:66)
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
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          // group8ubU (134:71)
                          onPressed: () {
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
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(24.24 * fem, 26 * fem,
                                25.76 * fem, 20.89 * fem),
                            width: 120 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xff129153),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // iconcalendarcheckQYE (134:73)
                                  margin: EdgeInsets.fromLTRB(2.51 * fem,
                                      0 * fem, 0 * fem, 10.91 * fem),
                                  width: 40.99 * fem,
                                  height: 47.21 * fem,
                                  child: Image.asset(
                                    'assets/doctor/images/icon-calendar-check-KLr.png',
                                    width: 40.99 * fem,
                                    height: 47.21 * fem,
                                  ),
                                ),
                                Text(
                                  // appointmentiop (134:75)
                                  'Appointment',
                                  textAlign: TextAlign.center,
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
                  Container(
                    // upcomingappointments4sg (134:33)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 14 * fem),
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
                  Container(
                    // group12BhQ (147:123)
                    margin:
                        EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 5 * fem),
                    padding: EdgeInsets.fromLTRB(
                        15.5 * fem, 11 * fem, 8 * fem, 10 * fem),
                    width: double.infinity,
                    height: 95 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xff024f2a),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupovcnGyk (HTBYnFcNWU2swvbgDSovcn)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 9 * fem, 4 * fem, 5 * fem),
                          width: 208.5 * fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                // appointmentdatezPx (147:120)
                                width: double.infinity,
                                child: Text(
                                  'Appointment Date',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 8 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // tuemay15900amX8z (134:39)
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
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // rectangle24E3Q (147:121)
                                margin: EdgeInsets.fromLTRB(
                                    0.5 * fem, 0 * fem, 0 * fem, 1 * fem),
                                width: 208 * fem,
                                height: 1 * fem,
                                decoration: const BoxDecoration(
                                  color: Color(0xff78f4b7),
                                ),
                              ),
                              SizedBox(
                                // martincruzM82 (134:42)
                                width: double.infinity,
                                child: Text(
                                  'Christine Lopez',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // patients6N (147:122)
                                width: double.infinity,
                                child: Text(
                                  'Patient',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 8 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // rectangle20b2N (134:38)
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
                  Container(
                    // group13iMt (147:124)
                    margin:
                        EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 5 * fem),
                    padding: EdgeInsets.fromLTRB(
                        15.5 * fem, 11 * fem, 8 * fem, 10 * fem),
                    width: double.infinity,
                    height: 95 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xff20754c),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouphioy1bt (HTBZ7Qj7n1XtQt1iYbHioY)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 9 * fem, 4 * fem, 5 * fem),
                          width: 208.5 * fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                // appointmentdateXq8 (147:128)
                                width: double.infinity,
                                child: Text(
                                  'Appointment Date',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 8 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // tuemay15900amNar (147:127)
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
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // rectangle24gLe (147:131)
                                margin: EdgeInsets.fromLTRB(
                                    0.5 * fem, 0 * fem, 0 * fem, 1 * fem),
                                width: 208 * fem,
                                height: 1 * fem,
                                decoration: const BoxDecoration(
                                  color: Color(0xff78f4b7),
                                ),
                              ),
                              SizedBox(
                                // martincruzDLa (147:129)
                                width: double.infinity,
                                child: Text(
                                  'Robert Cruz',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // patientMhg (147:130)
                                width: double.infinity,
                                child: Text(
                                  'Patient',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 8 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // rectangle20W4n (147:126)
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
                  Container(
                    // group1434i (147:132)
                    margin:
                        EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        15.5 * fem, 11 * fem, 8 * fem, 10 * fem),
                    width: double.infinity,
                    height: 95 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xff20754c),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupp6p6Knv (HTBZU9dZSGis9gPTR5P6p6)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 9 * fem, 4 * fem, 5 * fem),
                          width: 208.5 * fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                // appointmentdateEQ6 (147:136)
                                width: double.infinity,
                                child: Text(
                                  'Appointment Date',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 8 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // tuemay15900amxaz (147:135)
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
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // rectangle24H7U (147:139)
                                margin: EdgeInsets.fromLTRB(
                                    0.5 * fem, 0 * fem, 0 * fem, 1 * fem),
                                width: 208 * fem,
                                height: 1 * fem,
                                decoration: const BoxDecoration(
                                  color: Color(0xff78f4b7),
                                ),
                              ),
                              SizedBox(
                                // martincruzc9k (147:137)
                                width: double.infinity,
                                child: Text(
                                  'Martin Cruz',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // patientwhp (147:138)
                                width: double.infinity,
                                child: Text(
                                  'Patient',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 8 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // rectangle20VDY (147:134)
                          width: 74 * fem,
                          height: 74 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15 * fem),
                            child: Image.asset(
                              'assets/doctor/images/rectangle-20-kpv.png',
                              fit: BoxFit.cover,
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
