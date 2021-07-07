import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text('Bookmark Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Halaman Bookmark'),
      ),
    );
  }
}
