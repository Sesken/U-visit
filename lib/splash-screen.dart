import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:uvisitfinal/utils.dart';

import 'role.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // splashscreenRXt (3:14)
        padding: EdgeInsets.fromLTRB(25 * fem, 70 * fem, 25 * fem, 112 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(30 * fem),
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
              // autogroupusxxoB4 (HTAtKrgmcVj3tdt3TAUSXx)
              margin:
                  EdgeInsets.fromLTRB(90 * fem, 0 * fem, 89 * fem, 43 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // image1tyC (6:40)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 0 * fem),
                    width: 45 * fem,
                    height: 45 * fem,
                    child: Image.asset(
                      'assets/patient/images/image-1-RJe.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // uvisitc8W (6:41)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'U-Visit',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.1725 * ffem / fem,
                        color: Color(0xff129153),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // undrawdoctorsp6aq21tbp (128:99)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 33 * fem),
              width: 310 * fem,
              height: 260 * fem,
              child: Image.asset(
                'assets/patient/images/undrawdoctorsp6aq-2-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // welcometouvisitC6i (6:55)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 12 * fem),
              child: Text(
                'Welcome to U-Visit',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // uvisitisamobileappthatprovides (6:60)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 77 * fem),
              constraints: BoxConstraints(
                maxWidth: 297 * fem,
              ),
              child: Text(
                'U-Visit is a mobile app that provides a convenient and secure way for patients to stay connected to their healthcare',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const RoleSelector(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                // autogroupuk2rWWi (HTAtV6vN7S1pkTokvZUk2r)
                width: double.infinity,
                height: 50 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff129153),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
