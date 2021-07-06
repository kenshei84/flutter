import 'package:flutter/material.dart';
import 'nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Belajar NavDrawer',
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatefulWidget {
  _BelajarNavigationDrawerState createState() =>
      _BelajarNavigationDrawerState();
}

class _BelajarNavigationDrawerState extends State<BelajarNavigationDrawer> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Belajar NavDrawer'),
        leading: new IconButton(
            onPressed: () => scaffoldKey.currentState!.openDrawer(),
            icon: new Icon(
              Icons.menu,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
              icon: new Icon(
                Icons.account_box,
                color: Colors.white,
              )),
        ],
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Belajar Navigation Drawer di Flutter',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
