import 'package:flutter/material.dart';
import 'pages/myfiles-page.dart';
import 'pages/sharedwithme-page.dart';
import 'pages/recent-page.dart';
import 'pages/trash-page.dart';
import 'pages/bookmark-page.dart';
import 'pages/account-page.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // disini letak header
          drawerHeader(context),
          // disini letak body
          drawerItem(
              Icons.folder,
              'My Files',
              () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyFilesPage()))),
          drawerItem(
              Icons.share,
              'Shared with me',
              () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SharedWithMePage()))),
          drawerItem(
              Icons.access_time_filled,
              'Recent',
              () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RecentPage()))),
          drawerItem(
              Icons.delete,
              'Trash',
              () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TrashPage()))),

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
          drawerItem(
              Icons.bookmark,
              'Bookmark',
              () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BookmarkPage()))),
        ],
      ),
    );
  }

  Widget drawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text('Yusuf Rizal'),
      accountEmail: Text('rizal@inixindo.co.id'),
      // onDetailsPressed: () {},
      currentAccountPicture: GestureDetector(
        onTap: () {
          print('Account di tap');
          // Get.to(AccountPage());
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AccountPage()));
        },
        child: ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_1.png'),
            fit: BoxFit.cover,
          ),
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
