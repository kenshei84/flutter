import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // disini letak header
          drawerHeader(),
          // disini letak body
          drawerItem(
              Icons.folder_open, 'My Files', () => print('Tap My Files')),
          drawerItem(
              Icons.share, 'Shared with me', () => print('Tap Shared with me')),
          drawerItem(Icons.access_time, 'Recent', () => print('Tap Recent')),
          drawerItem(Icons.delete_sweep, 'Trash', () => print('Tap Trash')),

          Divider(
            height: 25,
            thickness: 6,
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            child: Text('Labels',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          drawerItem(Icons.bookmark, 'Bookmark', () => print('Tap Bookmark')),
        ],
      ),
    );
  }

  Widget drawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('Yusuf Rizal'),
      accountEmail: Text('rizal@inixindo.co.id'),
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage('assets/images/user_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      otherAccountsPictures: [
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_2.png'),
            fit: BoxFit.cover,
          ),
        ),
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_3.png'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget drawerItem(IconData icon, String text, GestureTapCallback onTap) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
