import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import '../../../size_config.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.sort,
          size: getProportionateScreenWidth(30),
        ),
        Hero(
          tag: 'ProfilePicture',
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              radius: getProportionateScreenWidth(20),
            ),
          ),
        ),
      ],
    );
  }
}
