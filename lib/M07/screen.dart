import 'package:flutter/material.dart';

class Screen07 extends StatefulWidget {
  const Screen07({super.key});

  @override
  State<Screen07> createState() => _Screen07State();
}

class _Screen07State extends State<Screen07> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text('Latihan Minggu 7'),
        actions: [],
      ),
    );
  }
}
