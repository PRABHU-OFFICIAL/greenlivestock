import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String path = "https://www.w3schools.com/howto/img_avatar.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(path),
                  ),
                  accountName: const Text(
                    "accountName",
                    style: TextStyle(color: Colors.green),
                  ),
                  accountEmail: const Text(
                    "accountEmail",
                    style: TextStyle(color: Colors.red),
                  ))),
          const ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.black,
            ),
            title: Text('Info About App'),
          ),
          const ListTile(
            leading: Icon(
              Icons.style_outlined,
              color: Colors.black,
            ),
            title: Text('Case Studies'),
          ),
          const ListTile(
            leading: Icon(
              Icons.comment_bank_outlined,
              color: Colors.black,
            ),
            title: Text('Community Forum'),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text('Settings'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: 80,
                    child: Row(
                      children: const [
                        Icon(Icons.logout),
                        Text("Logout"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
