import 'package:flutter/material.dart';
import 'package:uvisitfinal/Patient%20Pages/dashboard.dart';
import 'package:uvisitfinal/utils.dart';

class patientDoctors extends StatelessWidget {
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
            // doctors29L (118:607)
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
                  // rectangle8thL (118:608)
                  left: 1 * fem,
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
                            colors: <Color>[
                              Color(0xff78f4b7),
                              Color(0x00ffd6d6)
                            ],
                            stops: <double>[0, 1],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // cardiologistxx6 (118:904)
                  left: 149 * fem,
                  top: 259 * fem,
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
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // surgeons3U (118:905)
                  left: 149 * fem,
                  top: 390 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 63 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Surgeon',
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
                  // pediatricianpN2 (118:907)
                  left: 149 * fem,
                  top: 521 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 90 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Pediatrician',
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
                  // psychologist8dc (118:909)
                  left: 149 * fem,
                  top: 652 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 94 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Psychologist',
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
                  // drjasminecruzrJi (118:903)
                  left: 149 * fem,
                  top: 229 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 172 * fem,
                      height: 30 * fem,
                      child: FittedBox(
                        child: Text(
                          'Dr. Rapunzel Myers',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // draladdinreyeswb4 (118:906)
                  left: 149 * fem,
                  top: 360 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 177 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Dr. Aladdin Reyes',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // drrapunzelcortezSXp (118:908)
                  left: 149 * fem,
                  top: 491 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 198 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Dr. Rapunzel Cortez',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // drmauiloganLt6 (118:910)
                  left: 149 * fem,
                  top: 622 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 150 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Dr. Maui Logan',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // doctorskwp (118:615)
                  left: 80 * fem,
                  top: 67 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 78 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Doctors',
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
                  // primarysWe (118:616)
                  left: 89 * fem,
                  top: 760 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 18 * fem,
                      height: 18 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          'assets/patient/images/primary-BSn.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // primaryBGS (118:617)
                  left: 172 * fem,
                  top: 760 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 18 * fem,
                      height: 18 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          'assets/patient/images/primary-bok.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconusertRk (118:618)
                  left: 255 * fem,
                  top: 760 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 18 * fem,
                      height: 18 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          'assets/patient/images/icon-user-sUi.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconchevronleftmVY (118:620)
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
                          'assets/patient/images/icon-chevron-left-SrA.png',
                          width: 17.4 * fem,
                          height: 29 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle454jY (118:897)
                  left: 25 * fem,
                  top: 130 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 310 * fem,
                      height: 35 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15 * fem),
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // searchdoctornQe (118:898)
                  left: 42 * fem,
                  top: 136 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 107 * fem,
                      height: 23 * fem,
                      child: Text(
                        'Search Doctor',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff969696),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle46gW2 (118:899)
                  left: 26 * fem,
                  top: 204 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 109 * fem,
                      height: 109 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15 * fem),
                        child: Image.asset(
                          'assets/patient/images/rectangle-46.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle47PfL (118:900)
                  left: 26 * fem,
                  top: 332 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 109 * fem,
                      height: 109 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15 * fem),
                        child: Image.asset(
                          'assets/patient/images/rectangle-47.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle4875Y (118:901)
                  left: 26 * fem,
                  top: 460 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 109 * fem,
                      height: 109 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15 * fem),
                        child: Image.asset(
                          'assets/patient/images/rectangle-48.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle49d3t (118:902)
                  left: 25 * fem,
                  top: 588 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 109 * fem,
                      height: 109 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15 * fem),
                        child: Image.asset(
                          'assets/patient/images/rectangle-49.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
