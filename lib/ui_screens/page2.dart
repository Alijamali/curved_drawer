import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: const Center(
        child: Text(
          'M a r k e t',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
