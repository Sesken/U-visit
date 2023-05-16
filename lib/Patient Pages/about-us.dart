import 'package:flutter/material.dart';
import 'package:uvisitfinal/utils.dart';
import 'dashboard.dart';

class patientAboutUs extends StatelessWidget {
  const patientAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // aboutusbMG (103:64)
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
                // rectangle8rnz (103:65)
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
                // rectangle3vH4 (103:71)
                left: 0 * fem,
                top: 735 * fem,
                child: Align(
                  child: SizedBox(
                    width: 360 * fem,
                    height: 65 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 * fem),
                        color: const Color(0xff129153),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // aboutus2qt (103:72)
                left: 80 * fem,
                top: 67 * fem,
                child: Align(
                  child: SizedBox(
                    width: 91 * fem,
                    height: 30 * fem,
                    child: Text(
                      'About Us',
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
                // primary7sL (103:74)
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
                        'assets/patient/images/primary-5EN.png',
                        width: 18 * fem,
                        height: 18 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // primary2jQ (103:75)
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
                        'assets/patient/images/primary-PWW.png',
                        width: 18 * fem,
                        height: 18 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconuserjdp (103:76)
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
                        'assets/patient/images/icon-user.png',
                        width: 18 * fem,
                        height: 18 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconchevronleft38i (103:78)
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
                        'assets/patient/images/icon-chevron-left-71x.png',
                        width: 17.4 * fem,
                        height: 29 * fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // component17PU (104:140)
                left: 1 * fem,
                top: 254 * fem,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        360 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 360 * fem,
                    height: 178 * fem,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/patient/images/n-bg.png',
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // ntHk (I104:140;104:113)
                          width: 360 * fem,
                          height: 178 * fem,
                          child: Image.asset(
                            'assets/patient/images/n-WeA.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          // n1tA (I104:140;104:112)
                          width: 360 * fem,
                          height: 178 * fem,
                          child: Image.asset(
                            'assets/patient/images/n-YbY.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          // nkqk (I104:140;104:114)
                          width: 360 * fem,
                          height: 178 * fem,
                          child: Image.asset(
                            'assets/patient/images/n.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // group15JMU (105:161)
                left: 22 * fem,
                top: 118 * fem,
                child: SizedBox(
                  width: 310 * fem,
                  height: 126 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogrouplnxecd4 (HTBBGTHrHwTCM2MT95LnxE)
                        margin: EdgeInsets.fromLTRB(
                            21 * fem, 0 * fem, 9 * fem, 13 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // caringwithpassionandcompassion (104:102)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 6 * fem, 9 * fem, 0 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 172 * fem,
                              ),
                              child: Text(
                                '“CARING WITH PASSION \nAND COMPASSION BEYOND \nEXPECATION”',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725 * ffem / fem,
                                  fontStyle: FontStyle.italic,
                                  color: const Color(0xff024f2a),
                                ),
                              ),
                            ),
                            Container(
                              // rectangle33CrA (104:106)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 19 * fem, 1 * fem),
                              width: 2 * fem,
                              height: 110 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xff024f2a),
                              ),
                            ),
                            Container(
                              // autogrouprjsujbC (HTBBMT9XKUN9wo52XirjsU)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 0 * fem, 0 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // image1shQ (103:100)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 1 * fem, 8 * fem),
                                    width: 69 * fem,
                                    height: 72 * fem,
                                    child: Image.asset(
                                      'assets/patient/images/image-1-4VU.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    // uvisitob4 (103:66)
                                    'U-Visit',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 25 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725 * ffem / fem,
                                      color: const Color(0xff024f2a),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // rectangle35998 (105:162)
                        width: double.infinity,
                        height: 2 * fem,
                        decoration: const BoxDecoration(
                          color: Color(0xff024f2a),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group14tsQ (105:160)
                left: 1 * fem,
                top: 451 * fem,
                child: SizedBox(
                  width: 360 * fem,
                  height: 180 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle35RcS (104:147)
                        left: 135 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 225 * fem,
                            height: 179 * fem,
                            child: Image.asset(
                              'assets/patient/images/rectangle-35.png',
                              width: 225 * fem,
                              height: 179 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle36XvN (104:148)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 225 * fem,
                            height: 179 * fem,
                            child: Image.asset(
                              'assets/patient/images/rectangle-36.png',
                              width: 225 * fem,
                              height: 179 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // missionTJE (105:151)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 103 * fem,
                            height: 30 * fem,
                            child: Text(
                              'MISSION',
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 25 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1725 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // visionLcv (105:152)
                        left: 272 * fem,
                        top: 150 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 82 * fem,
                            height: 30 * fem,
                            child: Text(
                              'VISION',
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 25 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1725 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // toprovideexcellenthealthcareby (105:157)
                        left: 206 * fem,
                        top: 55 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 127 * fem,
                            height: 59 * fem,
                            child: Text(
                              '“To provide excellent health care by upgrading facilities and equipment to be at par if not excel other private institutions in the locality.”',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1725 * ffem / fem,
                                fontStyle: FontStyle.italic,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // toprovidegoodpatientcareforthe (105:159)
                        left: 25 * fem,
                        top: 44 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 126 * fem,
                            height: 83 * fem,
                            child: Text(
                              '“To provide good patient care for the catchment population thru high quality service characterized by relevance, acceptance cost and humaneness as imperative concomitants.”',
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1725 * ffem / fem,
                                fontStyle: FontStyle.italic,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // rectangle34Cwx (104:146)
                left: 25 * fem,
                top: 443 * fem,
                child: Align(
                  child: SizedBox(
                    width: 310 * fem,
                    height: 2 * fem,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff03502a),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle35ifQ (105:163)
                left: 24 * fem,
                top: 636 * fem,
                child: Align(
                  child: SizedBox(
                    width: 310 * fem,
                    height: 2 * fem,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff03502a),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group16eZ4 (114:215)
                left: 46 * fem,
                top: 649 * fem,
                child: SizedBox(
                  width: 270 * fem,
                  height: 70 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // autogroupcsscZg2 (HTBBn777KJUDZzsbnnCssC)
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // visitusujt (105:165)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 12 * fem),
                              child: Text(
                                'Visit Us',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff024f2a),
                                ),
                              ),
                            ),
                            Container(
                              // emailusRy8 (105:166)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              child: Text(
                                'Email Us',
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff024f2a),
                                ),
                              ),
                            ),
                            Text(
                              // callusYnr (105:167)
                              'Call Us',
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1725 * ffem / fem,
                                color: const Color(0xff024f2a),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupw8yehQr (HTBC1w3QRUbY4Xnm36w8YE)
                        padding: EdgeInsets.fromLTRB(
                            7 * fem, 0 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // rectangle372i2 (105:172)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 17 * fem, 0 * fem),
                              width: 2 * fem,
                              height: 66 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xff024f2a),
                              ),
                            ),
                            Container(
                              // autogroup1c46NG6 (HTBBtwF4avvCDrPMVQ1c46)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 0 * fem, 0 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // gualbertoavenuerosariobatangas (105:168)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 11 * fem),
                                    child: Text(
                                      'Gualberto Avenue, Rosario, Batangas',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff024f2a),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // untalangenhospitalyahoocompNz (105:169)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 13 * fem),
                                    child: Text(
                                      'untalangen_hospital@yahoo.com',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff024f2a),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // 8ea (105:170)
                                    margin: EdgeInsets.fromLTRB(
                                        1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      '(043) 321 1563 | 09175842643',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff024f2a),
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
            ],
          ),
        ),
      ),
    );
  }
}
