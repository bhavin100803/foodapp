import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red
              ),
              accountName: Text(
                "Programmer",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: Text(
                "bhavinProgramer@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/item/avtar_photo.jpg"),
              ),
            ),
          ),

          // List Tile
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: Text("Home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title: Text("My Account",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
            ),
            title: Text("My Orders",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            title: Text("My Wish List",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.red,
            ),
            title: Text("Setting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text("Log Out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),

        ],
      ),
    );
  }
}
