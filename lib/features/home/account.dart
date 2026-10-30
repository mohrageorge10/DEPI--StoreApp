import 'package:flutter/material.dart';
import 'package:rertail/features/home/widgets/profile_list_tile.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Profile", style: TextStyle(
    color: Colors.orange,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProfileListTile(txt: "Edit Profile", leadingIcon: Icons.person),
          ProfileListTile(txt: "Change Password", leadingIcon: Icons.key),
          ProfileListTile(txt: "My Cards", leadingIcon: Icons.credit_card),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            child: Text("App Settings", style: TextStyle(
    color: Colors.orange,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  )),
          ),

          SwitchListTile(
            value: val,
            onChanged: (value) {
              setState(() {
                val = value;
              });
            },
            secondary: Icon(Icons.notifications, color: Color(0xff7F4E1D)),
            title: Text("Notifications", style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color(0xff7F4E1D),
  )),
            activeTrackColor: Colors.orange,
            inactiveTrackColor: Color(0xffF3F3F3),
          ),
          ProfileListTile(
            txt: "Language",
            leadingIcon: Icons.translate,
            isArrow: false,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("English", style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff7F4E1D),
  )),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff7F4E1D),
                  size: 16,
                ),
              ],
            ),
          ),
          ProfileListTile(
            txt: "Logout",
            leadingIcon: Icons.logout,
            isArrow: false,
          ),
        ],
      ),
    );
  }
}
