import 'package:flutter/material.dart';

class InfoKoperasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Koperasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Informasi mengenai koperasi, anggota, dan layanan yang ditawarkan.',
                style: TextStyle(fontSize: 18)),
            // Add more info about the cooperative here
          ],
        ),
      ),
    );
  }
}
