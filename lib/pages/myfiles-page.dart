import 'package:flutter/material.dart';

class MyFilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('My Files Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Halaman My Files'),
      ),
    );
  }
}
