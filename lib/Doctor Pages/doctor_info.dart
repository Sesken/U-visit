import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DoctorInfo {
  static Future<Map<String, String?>> getCurrentDoctorInfo() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      if (user.displayName != null && user.displayName!.isNotEmpty) {
        return {
          'firstName': user.displayName!,
          'lastName': '',
          'email': user.email!,
          'specialization': 'Unknown',
        };
      } else if (user.email != null && user.email!.isNotEmpty) {
        QuerySnapshot snapshot = await FirebaseFirestore.instance
            .collection('Doctor')
            .where('Email', isEqualTo: user.email!)
            .get();

        List<String> firstNames =
            snapshot.docs.map((doc) => doc['First Name'] as String).toList();
        List<String> lastNames =
            snapshot.docs.map((doc) => doc['Last Name'] as String).toList();
        List<String> specializations = snapshot.docs
            .map((doc) => doc['Specialization'] as String)
            .toList();

        if (firstNames.isNotEmpty) {
          return {
            'firstName': firstNames[0],
            'lastName': lastNames.isNotEmpty ? lastNames[0] : '',
            'email': user.email!,
            'specialization':
                specializations.isNotEmpty ? specializations[0] : 'Unknown',
          };
        } else {
          return {
            'firstName': 'First Name',
            'lastName': '',
            'email': user.email!,
            'specialization': 'Unknown',
          };
        }
      } else {
        return {
          'firstName': 'First Name',
          'lastName': '',
          'email': 'Email not found',
          'specialization': 'Unknown',
        };
      }
    } else {
      throw Exception('User not found');
    }
  }
}
