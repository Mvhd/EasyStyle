import 'package:easystyle/app_theme.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppTheme.chipBackground,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Icon(Icons.account_circle, color: Theme.of(context).primaryColor,size: 40,),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Easy Style",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text("Home"),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: ()
            {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Profile"),
            leading: IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
              },
            ),
            onTap: ()
            {

            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Contact"),
            leading: IconButton(
              icon: const Icon(Icons.contact_page),
              onPressed: () {
              },
            ),
            onTap: ()
            {

            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Logout"),
            leading: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
              },
            ),
            onTap: ()
            {

            },
          )
        ],
      ) ,
    );
  }
}