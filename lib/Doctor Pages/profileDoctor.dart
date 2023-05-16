import 'package:flutter/material.dart';
import 'package:uvisitfinal/BackButtonHandler.dart';
import 'package:uvisitfinal/Doctor%20Pages/dashboardDoctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/edit-profileDoctor.dart';
import 'package:uvisitfinal/utils.dart';

import 'doctor_info.dart';

class doctorProfile extends StatefulWidget {
  @override
  State<doctorProfile> createState() => _doctorProfileState();
}

class _doctorProfileState extends State<doctorProfile> {
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
              // profileLDk (168:321)
              padding:
                  EdgeInsets.fromLTRB(25 * fem, 67 * fem, 25 * fem, 215 * fem),
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
                    // autogroupvp4rY4v (HTBnxbV9D25cqzMMiUvP4r)
                    margin: EdgeInsets.fromLTRB(
                        8 * fem, 0 * fem, 20 * fem, 18 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // iconchevronleftUDU (168:331)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          doctorDashboard(),
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
                                'assets/doctor/images/icon-chevron-left-D8A.png',
                                width: 17.4 * fem,
                                height: 29 * fem,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // profilekRt (168:325)
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
                    // ellipse3V8a (168:326)
                    margin: EdgeInsets.fromLTRB(
                        90 * fem, 10 * fem, 91 * fem, 15 * fem),
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
                    // drrapunzelmyersPDx (168:323)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 13 * fem),
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
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              doctorEditProfile(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    child: Container(
                      // autogroupz8hltwQ (HTBo3m1CoUDwdaxaxDZ8HL)
                      margin: EdgeInsets.fromLTRB(
                          88 * fem, 0 * fem, 92 * fem, 16 * fem),
                      width: double.infinity,
                      height: 23 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xff129153),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Profile',
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
                  SizedBox(
                    // group13mkJ (168:333)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // rectangle28KWv (168:348)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 17 * fem),
                          width: double.infinity,
                          height: 2 * fem,
                          decoration: const BoxDecoration(
                            color: Color(0xff03502a),
                          ),
                        ),
                        SizedBox(
                          // autogroupr5btFfU (HTBoSv1Hh3FiaMkHbUr5bt)
                          height: 225 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // autogroups7ya18r (HTBoiaDs3Jv47yTd9ms7Ya)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 9 * fem, 0 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // addressjae (168:347)
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
                                      // emailU2S (168:344)
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
                                      // contactnoPv6 (168:345)
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
                                      // gender86z (168:341)
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
                                      // ageFhQ (168:342)
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
                                      // specialtybWN (168:343)
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
                                // rectangle29wq8 (168:349)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 19 * fem, 0 * fem),
                                width: 2 * fem,
                                height: 225 * fem,
                                decoration: const BoxDecoration(
                                  color: Color(0xff03502a),
                                ),
                              ),
                              Container(
                                // autogroupybysGcW (HTBovuCf3Dy5w5MunJYBYS)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 7 * fem, 0 * fem, 3 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // lipacitybatangaso6e (168:339)
                                      'Lipa City, Batangas',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25 * fem,
                                    ),
                                    Text(
                                      // rmyersgmailcom88v (168:340)
                                      '$currentDoctorEmail',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25 * fem,
                                    ),
                                    Text(
                                      // rai (168:334)
                                      '09167891234',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25 * fem,
                                    ),
                                    Text(
                                      // femaleb2W (168:335)
                                      'Female',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25 * fem,
                                    ),
                                    Text(
                                      // yrsoldvKg (168:336)
                                      '30 yrs old',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25 * fem,
                                    ),
                                    Text(
                                      // dermatologyFcr (168:337)
                                      'Dermatology',
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725 * ffem / fem,
                                        color: const Color(0xff000000),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
