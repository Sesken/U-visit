import 'package:flutter/material.dart';

import 'package:uvisitfinal/utils.dart';

import 'dashboard.dart';

class patientBilling extends StatelessWidget {
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
            // billing2sx (118:622)
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
                  // rectangle8VmY (118:623)
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
                            colors: <Color>[Color(0xff78f4b7), Colors.white],
                            stops: <double>[0, 1],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // billingtYn (118:630)
                  left: 89 * fem,
                  top: 67 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 61 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Billing',
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
                  // primarynPG (118:631)
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
                          'assets/patient/images/primary-96E.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // primarythC (118:632)
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
                          'assets/patient/images/primary-Vd8.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconuserb5p (118:633)
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
                          'assets/patient/images/icon-user-tj8.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iconchevronleftHUS (118:635)
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
                          'assets/patient/images/icon-chevron-left-2Rc.png',
                          width: 17.4 * fem,
                          height: 29 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle50z7x (118:914)
                  left: 25 * fem,
                  top: 130 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 310 * fem,
                      height: 479 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15 * fem),
                          color: const Color(0xff60e6a5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // patientfriendlystatementexampl (118:915)
                  left: 25 * fem,
                  top: 181 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 310 * fem,
                      height: 444 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15 * fem),
                        child: Image.asset(
                          'assets/patient/images/patientfriendlystatementexample2120-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // asofmay122023zGN (118:916)
                  left: 190 * fem,
                  top: 150 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 131 * fem,
                      height: 18 * fem,
                      child: Text(
                        'As of May 12, 2023',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.1725 * ffem / fem,
                          color: const Color(0xff03502a),
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
