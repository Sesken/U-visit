import 'package:flutter/material.dart';
import 'package:uvisitfinal/Doctor%20Pages/authDoctor.dart';
import 'package:uvisitfinal/Patient%20Pages/authPatient.dart';
import 'package:uvisitfinal/utils.dart';

class RoleSelector extends StatelessWidget {
  const RoleSelector({super.key});

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
            // roleo3t (178:15)
            width: double.infinity,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // autogrouppt5ggtN (HTAtxb8Zks36YhkRa7pT5g)
                  margin:
                      EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 26 * fem),
                  width: double.infinity,
                  height: 144 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupninjcX8 (HTAuAkSyBrrmAym4MZNinJ)
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 70 * fem, 60 * fem, 29 * fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // image191G (178:16)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              width: 45 * fem,
                              height: 45 * fem,
                              child: Image.asset(
                                'assets/patient/images/image-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // uvisitVzE (178:17)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'U-Visit',
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
                      Container(
                        // autogroupyaaj1hg (HTAu5vFgjFBAm2w8ozyaAJ)
                        padding: EdgeInsets.fromLTRB(
                            41 * fem, 0 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/patient/images/ellipse-3.png',
                            ),
                          ),
                        ),
                        child: Align(
                          // ellipse4jta (183:27)
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 103 * fem,
                            height: 101 * fem,
                            child: Image.asset(
                              'assets/patient/images/ellipse-4.png',
                              width: 103 * fem,
                              height: 101 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupjraveke (HTAuLVfjPYqdbHMjNDjRAv)
                  padding: EdgeInsets.fromLTRB(
                      23 * fem, 24 * fem, 25 * fem, 96 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30 * fem),
                    gradient: const LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: <Color>[Color(0xff78f4b7), Color(0x00ffd6d6)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // pleaseclickyourdestinationWH4 (178:18)
                        margin: EdgeInsets.fromLTRB(
                            3 * fem, 0 * fem, 0 * fem, 28 * fem),
                        child: Text(
                          'Please click your destination',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            letterSpacing: 0.4 * fem,
                            color: const Color(0xff03502a),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  patientAuth(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: Container(
                          // autogroup9jbcQ7Y (HTAuUubP3tyaWyqBcB9jBc)
                          margin: EdgeInsets.fromLTRB(
                              2 * fem, 0 * fem, 0 * fem, 14 * fem),
                          padding: EdgeInsets.fromLTRB(
                              59 * fem, 22 * fem, 58 * fem, 16 * fem),
                          width: 310 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                // undrawpeoplere8spw1V8z (180:15)
                                width: 193 * fem,
                                height: 143 * fem,
                                child: Image.asset(
                                  'assets/patient/images/undrawpeoplere8spw-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // patientRYS (180:16)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 1 * fem, 0 * fem),
                                child: Text(
                                  'Patient',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 25 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    letterSpacing: 0.5 * fem,
                                    color: const Color(0xff03502a),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const doctorAuth(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: Container(
                          // autogroup3flaY7G (HTAub9uyLK7n1wj9qz3fLA)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              55 * fem, 22 * fem, 55 * fem, 16 * fem),
                          width: 310 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff129153),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                // undrawmedicineb1ol1Rgr (180:24)
                                width: 200 * fem,
                                height: 143 * fem,
                                child: Image.asset(
                                  'assets/patient/images/undrawmedicineb1ol-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // doctorMaW (180:22)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'Doctor',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 25 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    letterSpacing: 0.5 * fem,
                                    color: const Color(0xffffffff),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
