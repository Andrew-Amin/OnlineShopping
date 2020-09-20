import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'package:shop_app/size_config.dart';
import 'profile_avatar.dart';
import 'profile_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: SizeConfig.screenWidth,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: 'ProfilePicture',
              child: ProfileAvatar(),
            ),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding * 2)),
            ProfileCard(
              cardTag: 'Account info.',
              iconPath: 'assets/icons/User.svg',
            ),
            ProfileCard(
              cardTag: 'Notification',
              iconPath: 'assets/icons/Bell.svg',
            ),
            ProfileCard(
              cardTag: 'Settings',
              iconPath: 'assets/icons/Settings.svg',
            ),
            ProfileCard(
              cardTag: 'Help Center',
              iconPath: 'assets/icons/Question mark.svg',
            ),
            ProfileCard(
              cardTag: 'Log Out',
              iconPath: 'assets/icons/Log out.svg',
            ),
          ],
        ),
      ),
    );
  }
}
