import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/patients.dart';
import 'package:uvisitfinal/utils.dart';

class doctorPatientDetails extends StatelessWidget {
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
              // patientsdetailsHJe (168:134)
              padding: EdgeInsets.fromLTRB(0 * fem, 67 * fem, 0 * fem, 0 * fem),
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
                    // autogroupmedtU8E (HTBd7st6nkc9P9Hp8DMedt)
                    margin: EdgeInsets.fromLTRB(
                        34 * fem, 0 * fem, 50 * fem, 6 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // iconchevronleftbTk (170:511)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 28.6 * fem, 0 * fem),
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
                              width: 17.4 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/doctor/images/icon-chevron-left-8ai.png',
                                width: 17.4 * fem,
                                height: 29 * fem,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // patientsdetailsgEJ (168:137)
                          'Patient’s Details',
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
                    // autogroupmx8nzkn (HTBdH87hHgtvEyDXbcMx8n)
                    width: double.infinity,
                    height: 168 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle15Xki (168:143)
                          left: 25 * fem,
                          top: 10 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 310 * fem,
                              height: 158 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  color: const Color(0xff129153),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle20SMt (168:144)
                          left: 38 * fem,
                          top: 20 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 117 * fem,
                              height: 138 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15 * fem),
                                child: Image.asset(
                                  'assets/doctor/images/ellipse-3-bg-gte.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // martincruzMUr (168:145)
                          left: 169.5 * fem,
                          top: 28 * fem,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 107 * fem,
                              height: 24 * fem,
                              child: FittedBox(
                                child: Text(
                                  'Christine Lopez',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1725 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // addressrosariobatangascitySmC (168:146)
                          left: 170 * fem,
                          top: 59 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 140 * fem,
                              height: 12 * fem,
                              child: Text(
                                'Address: Rosario, Batangas City',
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
                          ),
                        ),
                        Positioned(
                          // age24yrsoldYJS (170:431)
                          left: 170 * fem,
                          top: 79 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 65 * fem,
                              height: 12 * fem,
                              child: Text(
                                'Age: 24 yrs old',
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
                          ),
                        ),
                        Positioned(
                          // emailmcruzgmailcomEh4 (170:432)
                          left: 170 * fem,
                          top: 99 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 114 * fem,
                              height: 12 * fem,
                              child: Text(
                                'Email: MCruz@gmail.com',
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
                          ),
                        ),
                        Positioned(
                          // contactno0925435867993L (170:433)
                          left: 170 * fem,
                          top: 119 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 118 * fem,
                              height: 12 * fem,
                              child: Text(
                                'Contact No.: 09254358679',
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
                          ),
                        ),
                        Positioned(
                          // height180cmEqU (170:434)
                          left: 170 * fem,
                          top: 139 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 64 * fem,
                              height: 12 * fem,
                              child: Text(
                                'Height: 180cm',
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
                          ),
                        ),
                        Positioned(
                          // weight70kgLtW (170:435)
                          left: 264 * fem,
                          top: 139 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 57 * fem,
                              height: 12 * fem,
                              child: Text(
                                'Weight: 70kg',
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
                          ),
                        ),
                        Positioned(
                          // rectangle70rM4 (170:436)
                          left: 170 * fem,
                          top: 53 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 146 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup2aernEi (HTBdb7biaonNQ9Q1192AEr)
                    padding: EdgeInsets.fromLTRB(
                        25 * fem, 25 * fem, 25 * fem, 91 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group15ieA (170:501)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 25 * fem),
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
                                // autogroupau2aovW (HTBePWS5eQTbt6vEDDAU2a)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 9 * fem, 4 * fem, 5 * fem),
                                width: 208.5 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // appointmentdate5NE (170:505)
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
                                      // tuemay15900amc7G (170:504)
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
                                      // rectangle2485c (170:508)
                                      margin: EdgeInsets.fromLTRB(
                                          0.5 * fem, 0 * fem, 0 * fem, 1 * fem),
                                      width: 208 * fem,
                                      height: 1 * fem,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff78f4b7),
                                      ),
                                    ),
                                    Container(
                                      // martincruzFg2 (170:506)
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
                                    Container(
                                      // patientSVc (170:507)
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
                              Container(
                                // rectangle20BCJ (170:503)
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
                          // group21uPC (170:500)
                          width: double.infinity,
                          height: 495 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff6ed2a1),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // listofanymedicalproblemsasthma (170:486)
                                left: 16 * fem,
                                top: 298 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 232 * fem,
                                    height: 45 * fem,
                                    child: Text(
                                      'List of any Medical Problems \n(asthma, seizures, headaches)',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // haveyouhadthehepatitisbvaccina (170:487)
                                left: 16 * fem,
                                top: 212 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 220 * fem,
                                    height: 45 * fem,
                                    child: Text(
                                      'Have you had the Hepatitis B \nvaccination?',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // measlesmJv (170:488)
                                left: 17 * fem,
                                top: 144 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 65 * fem,
                                    height: 23 * fem,
                                    child: Text(
                                      'Measles:',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // chickenpoxvaricellaUDL (170:489)
                                left: 18 * fem,
                                top: 78 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 173 * fem,
                                    height: 23 * fem,
                                    child: Text(
                                      'Chicken Pox(Varicella):',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogroup5du2BNe (HTBdph3Rqc4e7SUgUq5DU2)
                                left: 16 * fem,
                                top: 104 * fem,
                                child: Container(
                                  width: 154 * fem,
                                  height: 35 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff129153),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Not Immune',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogrouppa8n4SS (HTBdv745HS41gGvPVCPA8N)
                                left: 16 * fem,
                                top: 167 * fem,
                                child: Container(
                                  width: 154 * fem,
                                  height: 35 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff129153),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Not Immune',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogrouplhtzvzS (HTBe125Z2WMHgdh8xJLhtz)
                                left: 16 * fem,
                                top: 258 * fem,
                                child: Container(
                                  width: 154 * fem,
                                  height: 35 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff129153),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'No',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogroupxrg6cMU (HTBe6GRouR7J4eFC7aXrG6)
                                left: 16 * fem,
                                top: 347 * fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem, 17 * fem, 17 * fem, 19 * fem),
                                  width: 278 * fem,
                                  height: 126 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff129153),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Center(
                                    // loremipsumdolorsitametconsecte (170:494)
                                    child: SizedBox(
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 241 * fem,
                                        ),
                                        child: Text(
                                          'You have been diagnosed with \nmeasles, a highly contagious viral disease. ',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w300,
                                            height: 1.5 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // generalmedicalhistoryAnJ (170:498)
                                left: 33 * fem,
                                top: 20 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 243 * fem,
                                    height: 30 * fem,
                                    child: Text(
                                      'General Medical History',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff03502a),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle434cn (170:499)
                                left: 21 * fem,
                                top: 55 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 269 * fem,
                                    height: 3 * fem,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xff03502a),
                                      ),
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
