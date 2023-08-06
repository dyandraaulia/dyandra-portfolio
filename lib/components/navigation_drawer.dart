import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: headingStyle.copyWith(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Icon(
              Icons.sports_esports,
              color: Colors.white,
            ),
            title: Text(
              'Mini Projects',
              style: headingStyle.copyWith(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Icon(Icons.exit_to_app, color: Colors.white),
            title: Text(
              'Out',
              style: headingStyle.copyWith(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // exit the app
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
