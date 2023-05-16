import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/profileDoctor.dart';
import 'package:uvisitfinal/utils.dart';

import 'doctor_info.dart';

class doctorEditProfile extends StatefulWidget {
  @override
  State<doctorEditProfile> createState() => _doctorEditProfileState();
}

class _doctorEditProfileState extends State<doctorEditProfile> {
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
              // editprofile5WW (168:391)
              padding:
                  EdgeInsets.fromLTRB(25 * fem, 67 * fem, 25 * fem, 130 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30 * fem),
                color: const Color(0xffffffff),
                gradient: const LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xff78f4b8), Colors.white],
                  stops: <double>[0, 0.553],
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
                    // autogroupttvgtTx (HTBrQL5fhRNbe18jVGTTVG)
                    margin: EdgeInsets.fromLTRB(
                        8 * fem, 0 * fem, 100 * fem, 18 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // iconchevronleft24N (168:401)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
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
                            child: SizedBox(
                              width: 17.4 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/doctor/images/icon-chevron-left-QTx.png',
                                width: 17.4 * fem,
                                height: 29 * fem,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // profileWES (168:395)
                          'Profile',
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
                    // ellipse3dpr (168:396)
                    margin: EdgeInsets.fromLTRB(
                        90 * fem, 0 * fem, 91 * fem, 16 * fem),
                    width: double.infinity,
                    height: 129 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(64.5 * fem),
                      border: Border.all(color: const Color(0xff03502a)),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/Icons/proflie.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // rapunzelmyersYS2 (168:393)
                    margin: EdgeInsets.fromLTRB(
                        5 * fem, 0 * fem, 0 * fem, 12 * fem),
                    child: Text(
                      'Dr. $currentDoctorName $currentDoctorLastName',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.1725 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupdk1gXok (HTBre5BmX8tEY874p3dK1g)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 62 * fem),
                    width: double.infinity,
                    height: 244 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle62edU (168:403)
                          left: 100 * fem,
                          top: 24 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 210 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  border: Border.all(
                                      color: const Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle63A62 (168:404)
                          left: 100 * fem,
                          top: 64 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 210 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  border: Border.all(
                                      color: const Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle64UcW (168:405)
                          left: 100 * fem,
                          top: 104 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 210 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  border: Border.all(
                                      color: const Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle65QWA (168:406)
                          left: 100 * fem,
                          top: 144 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 210 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  border: Border.all(
                                      color: const Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle66X4z (168:407)
                          left: 100 * fem,
                          top: 184 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 210 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  border: Border.all(
                                      color: const Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle672XY (168:408)
                          left: 100 * fem,
                          top: 224 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 210 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  border: Border.all(
                                      color: const Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group13jwk (168:410)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: SizedBox(
                            width: 310 * fem,
                            height: 244 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // rectangle284z2 (168:425)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 17 * fem),
                                  width: double.infinity,
                                  height: 2 * fem,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff03502a),
                                  ),
                                ),
                                SizedBox(
                                  // autogroupvglebyx (HTBs3EBrQhv1UttmTJvGLE)
                                  height: 225 * fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // autogroupaupcMCS (HTBsJPRG4DtFU2w9ULauPC)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 9 * fem, 0 * fem),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // addressfyp (168:424)
                                              'Address',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 22 * fem,
                                            ),
                                            Text(
                                              // emailoaE (168:421)
                                              'Email',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 22 * fem,
                                            ),
                                            Text(
                                              // contactnoYGv (168:422)
                                              'Contact No.',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 22 * fem,
                                            ),
                                            Text(
                                              // gender5Gr (168:418)
                                              'Gender',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 22 * fem,
                                            ),
                                            Text(
                                              // agepES (168:419)
                                              'Age',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 22 * fem,
                                            ),
                                            Text(
                                              // specialty9nW (168:420)
                                              'Specialty',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // rectangle29hp2 (168:426)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 19 * fem, 0 * fem),
                                        width: 2 * fem,
                                        height: 225 * fem,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff03502a),
                                        ),
                                      ),
                                      Container(
                                        // autogroupspjnFKk (HTBsVYmL5iKiyMbsBFSPJN)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 7 * fem, 0 * fem, 3 * fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // lipacitybatangasyFk (168:416)
                                              'Lipa City, Batangas',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff969696),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25 * fem,
                                            ),
                                            Text(
                                              // rmyersgmailcomttW (168:417)
                                              '$currentDoctorEmail',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff969696),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25 * fem,
                                            ),
                                            Text(
                                              // pnA (168:411)
                                              '09167891234',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff969696),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25 * fem,
                                            ),
                                            Text(
                                              // femalemBc (168:412)
                                              'Female',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff969696),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25 * fem,
                                            ),
                                            Text(
                                              // yrsoldJSS (168:413)
                                              '30 yrs old',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff969696),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25 * fem,
                                            ),
                                            Text(
                                              // dermatologySYe (168:414)
                                              'Dermatology',
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725 * ffem / fem,
                                                color: const Color(0xff969696),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              doctorProfile(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    child: Container(
                      // autogroupjwciPin (HTBtDCEby9w3dnEzmJjwci)
                      margin: EdgeInsets.fromLTRB(
                          88 * fem, 0 * fem, 92 * fem, 0 * fem),
                      width: double.infinity,
                      height: 23 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xff03502a),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Done',
                          style: SafeGoogleFont(
                            'Roboto',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725 * ffem / fem,
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
        ),
      ),
    );
  }
}
