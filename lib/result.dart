import 'dart:convert';
import 'package:flutter/material.dart';

class ResultOfQrScreen extends StatefulWidget {
  final String code;

  const ResultOfQrScreen({Key? key, required this.code}) : super(key: key);

  @override
  State<ResultOfQrScreen> createState() => _ResultOfQrScreenState();
}

class _ResultOfQrScreenState extends State<ResultOfQrScreen> {
  late Map<String, dynamic> qrData;

  @override
  void initState() {
    super.initState();

  }

  final bgColor = Color(0xfffafafa);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "QR Scanner Screen",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "QR Code Data:",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 20),
            Text(
              widget.code,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
