import 'package:flutter/material.dart';
import 'package:tiktoc_clne_re0/constant/gaps.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
      ),
      home: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          child: Row(children: const [
            Text('hello'),
            Gaps.h20,
            Text('hello'),
          ]),
        ),
      ),
    );
  }
}
