import 'package:flutter/material.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Sophonwit patihet 6812732139',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 255, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}