import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: UserDetailDrawer(),
      appBar: AppBar(
        title: Text('User Details'),
      ),
    );
  }
}

Widget _buildAppBar() {
  return AppBar();
}

class UserDetailDrawer extends StatefulWidget {
  @override
  _UserDetailDrawerState createState() => _UserDetailDrawerState();
}

class _UserDetailDrawerState extends State<UserDetailDrawer> {
  bool showUserDetails = false;

  Widget _buildDrawerList() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Visão geral"),
          leading: Icon(Icons.dashboard),
          onTap: () {
            print("Visão geral");
          },
        ),
        ListTile(
          title: Text("Another tile??"),
          leading: Icon(Icons.question_answer),
        ),
      ],
    );
  }

  Widget _buildUserDetail() {
    return Container(
      color: Colors.lightBlue,
      child: ListView(
        children: [
          ListTile(
            title: Text("User details"),
            leading: Icon(Icons.info_outline),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          accountName: Text("Cleudice Santos"),
          accountEmail: Text("cleudice.ms@gmail.com"),
          onDetailsPressed: () {
            setState(() {
              showUserDetails = !showUserDetails;
            });
          },
        ),
        Expanded(
            child: showUserDetails ? _buildUserDetail() : _buildDrawerList())
      ]),
    );
  }
}
