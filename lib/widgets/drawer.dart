import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    final imageUrl =
        "https://i0.wp.com/metagalaxia.com.br/wp-content/uploads/2022/08/image-11.png?resize=910%2C515&ssl=1";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Bianca"),
                accountEmail: Text("bia.ribeiro@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(imageUrl),
                  ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home, 
                color: Colors.white
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                   style: TextStyle(
                    color: Colors.white
                    ),
                   ),
            ),
              ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled, 
                color: Colors.white
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                   style: TextStyle(
                    color: Colors.white
                    ),
                   ),                  
            ),
              ListTile(
              leading: Icon(
                CupertinoIcons.mail, 
                color: Colors.white
                ),
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                   style: TextStyle(
                    color: Colors.white
                    ),
                   ),
              ),
          ],
        ),
      ),
    );
  }
}
