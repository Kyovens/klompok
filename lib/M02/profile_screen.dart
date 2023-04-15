import 'package:flutter/material.dart';
import 'package:tugas_kelompok/M02/profile_detail_screen.dart';

class ProfileScreen02 extends StatelessWidget {
  const ProfileScreen02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('211110870_Mhd.Reza'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailScreen02()),
            );
          },
          child: const Text('Go to Profile Detail Screen'),
        ),
      ),
    );
  }
}
