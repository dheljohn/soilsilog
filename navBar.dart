import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          UserAccountsDrawerHeader(

              accountName: Text('Bug-kun'),
              accountEmail: Text('bugkun.gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/bugkun.jpg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,

                  ),

                ),
              ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/background.jpg',

                  ),
                fit: BoxFit.cover,
              ),

          ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Manual'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.stacked_bar_chart),
            title: Text('Report'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => null,
          ),
        ],
      ),

    );
  }
}
