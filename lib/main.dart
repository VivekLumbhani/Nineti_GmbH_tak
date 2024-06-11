import 'package:flutter/material.dart';
import 'package:nineti_gmbh/scanfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: QrCodeScanner(),
    );
  }
}
