import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Account Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Halaman Account'),
      ),
    );
  }
}
