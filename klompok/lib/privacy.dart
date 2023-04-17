import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Privacy01 extends StatelessWidget {
  const Privacy01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('Privacy')),
    );
  }
}

class Support01 extends StatelessWidget {
  const Support01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          'Support',
        ),
      ),
    );
  }
}
