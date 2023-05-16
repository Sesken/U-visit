import 'package:flutter/material.dart';
import 'package:uvisitfinal/Patient%20Pages/appointment.dart';
import 'package:uvisitfinal/Patient%20Pages/billing.dart';
import 'package:uvisitfinal/Patient%20Pages/doctors.dart';
import 'package:uvisitfinal/Patient%20Pages/dropdown.dart';
import 'package:uvisitfinal/Patient%20Pages/prescription.dart';
import 'package:uvisitfinal/Patient%20Pages/profile.dart';

import 'package:uvisitfinal/Patient%20Pages/record.dart';
import 'package:uvisitfinal/Patient%20Pages/scheduleupcoming.dart';
import 'package:uvisitfinal/utils.dart';

import 'PatientInfo.dart';

class patientDashboard extends StatefulWidget {
  @override
  State<patientDashboard> createState() => _patientDashboardState();
}

class _patientDashboardState extends State<patientDashboard> {
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
            // dashboardbiv (66:15)
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupnbcactv (HTAyHP6MCZTY3nzJFSnBca)
                  padding:
                      EdgeInsets.fromLTRB(5 * fem, 60 * fem, 0 * fem, 43 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupxystwAW (HTAxdyzznXE2eRZJk8xyst)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 25 * fem, 18 * fem),
                        width: double.infinity,
                        height: 54 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse3f6W (71:39)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 10.5 * fem, 1 * fem),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              patientProfile(),
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
                                    borderRadius:
                                        BorderRadius.circular(22.5 * fem),
                                    border: Border.all(
                                        color: const Color(0xff024f2a)),
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
                              // autogrouprv5yiaa (HTAxo4aCiYHSKRbNNSrV5Y)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 83 * fem, 0 * fem),
                              width: 102.5 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // helloSmU (71:40)
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
                                  Container(
                                    // christinekGN (66:19)
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      currentUserName,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 25 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff129153),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            patientDropdown(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: Container(
                                // autogroupvej2Fiv (HTAxtE6GJzRm72CbcBVEJ2)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 22 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rectangle23yev (92:196)
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
                                      // rectangle23iMc (92:205)
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
                                      // rectangle23rii (92:203)
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
                          ],
                        ),
                      ),
                      Container(
                        // autogrouprvdx1rW (HTAy7dsazsUfdVPdEnRVDx)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 25 * fem, 28 * fem),
                        padding: EdgeInsets.fromLTRB(
                            22 * fem, 10 * fem, 11 * fem, 11 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(30 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // searchW2a (88:6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 210 * fem, 0 * fem),
                              child: Text(
                                'Search',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff969696),
                                ),
                              ),
                            ),
                            SizedBox(
                              // iconsearchcLW (88:9)
                              width: 20 * fem,
                              height: 20 * fem,
                              child: Image.asset(
                                'assets/patient/images/icon-search-f7t.png',
                                width: 20 * fem,
                                height: 20 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // servicesXiN (90:23)
                        margin: EdgeInsets.fromLTRB(
                            22 * fem, 0 * fem, 0 * fem, 14 * fem),
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
                        // frame7S4e (92:79)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 39 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        height: 107 * fem,
                        child: SizedBox(
                          // frame89Ur (92:86)
                          width: 439 * fem,
                          height: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  // group4thL (92:80)
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                patientRecord(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        17 * fem, 23 * fem, 17 * fem, 17 * fem),
                                    width: 79 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // iconmedicalnotesAuk (90:7)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 21.83 * fem),
                                          width: 25 * fem,
                                          height: 30.17 * fem,
                                          child: Image.asset(
                                            'assets/patient/images/icon-medical-notes.png',
                                            width: 25 * fem,
                                            height: 30.17 * fem,
                                          ),
                                        ),
                                        Text(
                                          // recordsUQe (92:72)
                                          'Records',
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
                                SizedBox(
                                  width: 11 * fem,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                patientPrescription(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // group5CbY (92:81)
                                    padding: EdgeInsets.fromLTRB(
                                        6 * fem, 23 * fem, 7 * fem, 17 * fem),
                                    width: 79 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // iconpillsWs8 (90:10)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 22 * fem),
                                          width: 38 * fem,
                                          height: 30 * fem,
                                          child: Image.asset(
                                            'assets/patient/images/icon-pills.png',
                                            width: 38 * fem,
                                            height: 30 * fem,
                                          ),
                                        ),
                                        Text(
                                          // prescriptionDmY (92:73)
                                          'Prescription',
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
                                SizedBox(
                                  width: 11 * fem,
                                ),
                                TextButton(
                                  // group6M74 (92:82)
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                patientDoctors(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        18 * fem, 23 * fem, 18 * fem, 17 * fem),
                                    width: 79 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // icondoctor2yt (90:13)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 1 * fem, 22 * fem),
                                          width: 28 * fem,
                                          height: 30 * fem,
                                          child: Image.asset(
                                            'assets/patient/images/icon-doctor.png',
                                            width: 28 * fem,
                                            height: 30 * fem,
                                          ),
                                        ),
                                        Text(
                                          // doctorsLjg (92:74)
                                          'Doctors',
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
                                SizedBox(
                                  width: 11 * fem,
                                ),
                                TextButton(
                                  // group7FLr (92:83)
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                patientBilling(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        20 * fem, 23 * fem, 19 * fem, 17 * fem),
                                    width: 79 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vectorXJN (90:21)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 22 * fem),
                                          width: 40 * fem,
                                          height: 30 * fem,
                                          child: Image.asset(
                                            'assets/patient/images/vector-rVt.png',
                                            width: 40 * fem,
                                            height: 30 * fem,
                                          ),
                                        ),
                                        Container(
                                          // billingEyU (92:75)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 2 * fem, 0 * fem),
                                          child: Text(
                                            'Billing',
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
                                SizedBox(
                                  width: 11 * fem,
                                ),
                                TextButton(
                                  // group8jQS (92:84)
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                patientAppointment(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        4 * fem, 23 * fem, 5 * fem, 17 * fem),
                                    width: 79 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff129153),
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // iconcalendarcheckdki (92:66)
                                          margin: EdgeInsets.fromLTRB(1 * fem,
                                              0 * fem, 0 * fem, 22 * fem),
                                          width: 25 * fem,
                                          height: 30 * fem,
                                          child: Image.asset(
                                            'assets/patient/images/icon-calendar-check-4ML.png',
                                            width: 25 * fem,
                                            height: 30 * fem,
                                          ),
                                        ),
                                        Text(
                                          // appointmentYsg (92:77)
                                          'Appointment',
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
                        ),
                      ),
                      Container(
                        // group1V2E (92:54)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 25 * fem, 38 * fem),
                        padding: EdgeInsets.fromLTRB(
                            22 * fem, 18 * fem, 15 * fem, 19 * fem),
                        width: double.infinity,
                        height: 148 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff78f4b7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupjus6NLv (HTAyjcqdb7FZwqka3qjuS6)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 5 * fem, 17 * fem, 5 * fem),
                                width: 138 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // getthebestmedicalservicegsQ (90:24)
                                      constraints: BoxConstraints(
                                        maxWidth: 115 * fem,
                                      ),
                                      child: Text(
                                        'Get the Best \nMedical Service',
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 13 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.1725 * ffem / fem,
                                          color: const Color(0xff024f2a),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // rectangle19yLi (90:26)
                                      width: double.infinity,
                                      height: 3 * fem,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff129153),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0 * fem,
                                    ),
                                    Container(
                                      // loremipsumdolorsitametconsecte (90:25)

                                      child: Text(
                                        'We offer a wide range of specialized services, including state-of-the-art facilities, advanced medical technologies, and comprehensive care. From preventive care and diagnostics to advanced surgical procedures and rehabilitation, we meet the diverse healthcare needs of our patients.',
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 8 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725 * ffem / fem,
                                          color: const Color(0xff024f2a),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // undrawdoctorkw5l11yzv (128:101)
                                width: 118 * fem,
                                height: 111 * fem,
                                child: Image.asset(
                                  'assets/patient/images/undrawdoctorkw5l-1-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // upcomingappointmentsWzr (88:15)
                        margin: EdgeInsets.fromLTRB(
                            22 * fem, 0 * fem, 0 * fem, 14 * fem),
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
                        // frame10S7p (92:92)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        height: 95 * fem,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group9NXG (92:88)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    10 * fem, 11 * fem, 15.5 * fem, 10 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff024f2a),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupul1cUaJ (HTAz2CCM4RgR1zrzm7uL1c)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 8.5 * fem, 0 * fem),
                                        padding: EdgeInsets.fromLTRB(14 * fem,
                                            18 * fem, 13 * fem, 18 * fem),
                                        width: 54 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff129153),
                                          borderRadius:
                                              BorderRadius.circular(15 * fem),
                                        ),
                                        child: Center(
                                          // tuePSN (92:35)
                                          child: SizedBox(
                                            child: Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 27 * fem,
                                              ),
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text: TextSpan(
                                                  style: SafeGoogleFont(
                                                    'Roboto',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.1725 * ffem / fem,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                  children: [
                                                    const TextSpan(
                                                      text: '12\n',
                                                    ),
                                                    TextSpan(
                                                      text: 'Tue',
                                                      style: SafeGoogleFont(
                                                        'Roboto',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.1725 * ffem / fem,
                                                        color: const Color(
                                                            0xffffffff),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroup3hhyWvJ (HTAz5wb6q5N8iaQBJc3HhY)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            12 * fem, 0 * fem, 12 * fem),
                                        width: 112 * fem,
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              // amdzv (92:42)
                                              width: double.infinity,
                                              child: Text(
                                                '9:00 am',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4 * fem,
                                            ),
                                            SizedBox(
                                              // drquackquackZ7t (92:43)
                                              width: double.infinity,
                                              child: Text(
                                                'Dr. Myers',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 15 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4 * fem,
                                            ),
                                            SizedBox(
                                              // cardiologistTyx (92:44)
                                              width: double.infinity,
                                              child: Text(
                                                'Dermatologist',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Roboto',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1725 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
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
                              Container(
                                // group10CRk (92:89)
                                padding: EdgeInsets.fromLTRB(
                                    10 * fem, 11 * fem, 15.5 * fem, 10 * fem),
                                width: 200 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff78f4b7),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroup1sqru5G (HTAzSWq9vRKkGYtGL11sQr)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8.5 * fem, 0 * fem),
                                          padding: EdgeInsets.fromLTRB(18 * fem,
                                              18 * fem, 17 * fem, 18 * fem),
                                          width: 54 * fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff129153),
                                            borderRadius:
                                                BorderRadius.circular(15 * fem),
                                          ),
                                          child: Center(
                                            // frizsQ (92:47)
                                            child: SizedBox(
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 19 * fem,
                                                ),
                                                child: Text(
                                                  '15\nFri',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'Roboto',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.1725 * ffem / fem,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupbrxaiHc (HTAzWBPiQcPnNiUcwwbRxA)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              12 * fem, 0 * fem, 12 * fem),
                                          width: 112 * fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                // amSDc (92:48)
                                                width: double.infinity,
                                                child: Text(
                                                  '9:00 am',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'Roboto',
                                                    fontSize: 10 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.1725 * ffem / fem,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4 * fem,
                                              ),
                                              SizedBox(
                                                // drquackquackYGe (92:50)
                                                width: double.infinity,
                                                child: Text(
                                                  'Dr. Quack Quack',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'Roboto',
                                                    fontSize: 15 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.1725 * ffem / fem,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4 * fem,
                                              ),
                                              SizedBox(
                                                // cardiologistrHL (92:49)
                                                width: double.infinity,
                                                child: Text(
                                                  'Cardiologist',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'Roboto',
                                                    fontSize: 10 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.1725 * ffem / fem,
                                                    color:
                                                        const Color(0xffffffff),
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
                    ],
                  ),
                ),
                Container(
                  // group22mv6 (157:11)
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 25 * fem, 0 * fem, 22 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff129153),
                    borderRadius: BorderRadius.circular(30 * fem),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
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
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          // primaryhHx (71:48)
                          width: 18 * fem,
                          height: 18 * fem,
                          child: Image.asset(
                            'assets/patient/images/primary-VGS.png',
                            width: 18 * fem,
                            height: 18 * fem,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 65 * fem,
                      ),
                      TextButton(
                        // primaryD1Q (71:50)
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  patientScheduleUpcoming(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 18 * fem,
                          height: 18 * fem,
                          child: Image.asset(
                            'assets/patient/images/primary-UaS.png',
                            width: 18 * fem,
                            height: 18 * fem,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 65 * fem,
                      ),
                      TextButton(
                        // iconuserKaE (88:4)
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  patientProfile(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 18 * fem,
                          height: 18 * fem,
                          child: Image.asset(
                            'assets/patient/images/icon-user-FXt.png',
                            width: 18 * fem,
                            height: 18 * fem,
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
    );
  }
}
