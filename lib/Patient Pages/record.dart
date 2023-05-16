import 'package:flutter/material.dart';
import 'package:uvisitfinal/Patient%20Pages/dashboard.dart';
import 'package:uvisitfinal/utils.dart';

class patientRecord extends StatelessWidget {
  const patientRecord({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // recordx4W (114:173)
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
                // rectangle8p6i (114:174)
                left: 2 * fem,
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
                          colors: <Color>[Color(0xff78f4b7), Color(0x00ffd6d6)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // medicalrecordPZ8 (114:184)
                left: 80 * fem,
                top: 67 * fem,
                child: Align(
                  child: SizedBox(
                    width: 156 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Medical Record',
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
                // iconchevronleftoWN (114:189)
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
                        'assets/patient/images/icon-chevron-left-UeJ.png',
                        width: 17.4 * fem,
                        height: 29 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle38u3c (118:652)
                left: 25 * fem,
                top: 124 * fem,
                child: Align(
                  child: SizedBox(
                    width: 310 * fem,
                    height: 495 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15 * fem),
                        color: const Color(0xff6ed2a1),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // listofanymedicalproblemsasthma (118:869)
                left: 41 * fem,
                top: 422 * fem,
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
                // haveyouhadthehepatitisbvaccina (118:868)
                left: 41 * fem,
                top: 336 * fem,
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
                // measlesaJA (118:867)
                left: 42 * fem,
                top: 268 * fem,
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
                // chickenpoxvaricella5Ev (118:654)
                left: 43 * fem,
                top: 202 * fem,
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
                // rectangle39xpW (118:875)
                left: 41 * fem,
                top: 228 * fem,
                child: Align(
                  child: SizedBox(
                    width: 154 * fem,
                    height: 35 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle40UH4 (118:876)
                left: 41 * fem,
                top: 291 * fem,
                child: Align(
                  child: SizedBox(
                    width: 154 * fem,
                    height: 35 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle41PQ2 (118:877)
                left: 41 * fem,
                top: 382 * fem,
                child: Align(
                  child: SizedBox(
                    width: 154 * fem,
                    height: 35 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle426pE (118:878)
                left: 41 * fem,
                top: 471 * fem,
                child: Align(
                  child: SizedBox(
                    width: 278 * fem,
                    height: 126 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // loremipsumdolorsitametconsecte (118:874)
                left: 61 * fem,
                top: 488 * fem,
                child: Align(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SizedBox(
                      width: 241 * fem,
                      height: 90 * fem,
                      child: Text(
                        "You have been diagnosed with \nmeasles, a highly contagious viral disease. ",
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
              Positioned(
                // notEJ (118:872)
                left: 107 * fem,
                top: 388 * fem,
                child: Align(
                  child: SizedBox(
                    width: 40 * fem,
                    height: 23 * fem,
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
                // notimmunePwk (118:871)
                left: 72 * fem,
                top: 297 * fem,
                child: Align(
                  child: SizedBox(
                    width: 92 * fem,
                    height: 23 * fem,
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
                // notimmuneVjt (118:870)
                left: 72 * fem,
                top: 234 * fem,
                child: Align(
                  child: SizedBox(
                    width: 92 * fem,
                    height: 23 * fem,
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
                // generalmedicalhistoryQrr (118:880)
                left: 58 * fem,
                top: 144 * fem,
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
                // rectangle43uHp (118:881)
                left: 46 * fem,
                top: 179 * fem,
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
      ),
    );
  }
}
