import 'package:flutter/material.dart';

class TrashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Trash Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Halaman Trash'),
      ),
    );
  }
}
