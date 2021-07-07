import 'package:flutter/material.dart';

class RecentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Recent Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Halaman Recent'),
      ),
    );
  }
}
