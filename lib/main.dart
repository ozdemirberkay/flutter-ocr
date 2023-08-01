import 'package:flutter/material.dart';
import 'package:flutter_ocr/screen/home_page.dart';

void main() {
  runApp(const FlutterOCR());
}

class FlutterOCR extends StatelessWidget {
  const FlutterOCR({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter OCR Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}
