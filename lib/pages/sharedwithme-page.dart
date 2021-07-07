import 'package:flutter/material.dart';

class SharedWithMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Shared With Me Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Halaman Shared With Me'),
      ),
    );
  }
}
