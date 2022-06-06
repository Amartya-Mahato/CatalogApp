import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/pages/Login_Page.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final twitterImageUrl =
        "https://pbs.twimg.com/profile_images/1485971842276143104/0CY0vUtD_400x400.jpg";
    final llinkedImageUrl2 =
        "https://media-exp1.licdn.com/dms/image/D4D35AQEBLHUNccIsHA/profile-framedphoto-shrink_400_400/0/1652624156787?e=1654635600&v=beta&t=ljEM99npFqFECQh_2IXjHh_0M4AHE4TplmOzw6EqFhA";
    final instagramImageUrl3 =
        "https://instagram.fbho1-1.fna.fbcdn.net/v/t51.2885-19/273857786_699338067873938_7778250515250698082_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fbho1-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=kjDKJohU4poAX-zVXT_&tn=h77xRsjpzi0JkB1J&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8hn0uKIEkg-rnjBcz4HLxwN2XkSi5O7gXpVorbkypLLA&oe=629E4A3F&_nc_sid=8fd12b";
    return Drawer(
      width: 290,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black26),
                margin: EdgeInsets.zero,
                accountName: Text(userNmae),
                accountEmail: Text(userEmail),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(twitterImageUrl),
                ),
                currentAccountPictureSize: Size.square(70),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(llinkedImageUrl2),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(instagramImageUrl3),
                  ),
                ],
                otherAccountsPicturesSize: Size.square(35),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 25,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 25,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
                size: 25,
              ),
              title: Text(
                "Mail",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
