import 'package:flutter/material.dart';
class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.txt,
    required this.leadingIcon,
    this.trailing,
    this.isArrow = true,
  });
  final String txt;
  final IconData leadingIcon;
  final Widget? trailing;
  final bool isArrow;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon, color: Color(0xff7F4E1D)),
      title: Text(txt, style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color(0xff7F4E1D),
  )),
      trailing: isArrow
          ? Icon(Icons.arrow_forward_ios, color: Color(0xff7F4E1D))
          : trailing,
    );
  }
}
