import 'package:flutter/material.dart';
import 'package:flutter_ocr/text_recognition/tex_recognition_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bodyIndex = 1;

  Widget bodyBuilder() {
    if (bodyIndex == 0) {
      return TextRecognizerView();
    } else if (bodyIndex == 1) {
      return Container();
    } else if (bodyIndex == 2) {
      return Container();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter OCR Example"),
        centerTitle: true,
      ),
      body: bodyBuilder(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bodyIndex,
        onTap: (value) {
          setState(() {
            bodyIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: "Live"),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_library_outlined), label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined), label: "Camera"),
        ],
      ),
    );
  }
}
