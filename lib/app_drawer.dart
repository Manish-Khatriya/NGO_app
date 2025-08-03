import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("KindHearts NGO"),
            accountEmail: Text("contact@kindhearts.org"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/NGO.jpg"),
            ),
            decoration: BoxDecoration(color: Colors.teal),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          ListTile(
            leading: Icon(Icons.volunteer_activism),
            title: Text("Volunteer Form"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/volunteer-form");
            },
          ),
        ],
      ),
    );
  }
}
