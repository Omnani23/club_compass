import 'package:flutter/material.dart';

import '../profile_menu.dart';
import '../profile_pic.dart';

class UserBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/logo/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/logo/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Events Participated",
            icon: "assets/logo/Bell.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/logo/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/logo/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/logo/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
