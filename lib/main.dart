// import 'package:edit/profidoc.dart';
import 'package:edit/profpat.dart';
import 'package:edit/report.dart';
// import 'package:edit/profidoc.dart';
// import 'package:edit/oldpag.dart';
// import 'package:edit/oldpag.dart';
// import 'package:edit/report.dart';
// import 'package:edit/profpat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: DoctorPage(),
      // home: patientpage(),
      // home: DoctorPage(),
      home : MedicalPagee()
    );
  }
}
