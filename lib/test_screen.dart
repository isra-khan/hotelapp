import 'package:flutter/material.dart';

class TestScreem extends StatefulWidget {
  const TestScreem({super.key});

  @override
  State<TestScreem> createState() => _TestScreemState();
}

class _TestScreemState extends State<TestScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Text('hello world'),
      ),
    );
  }
}
