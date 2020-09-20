import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile.jpg'),
          radius: getProportionateScreenWidth(50.0),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenHeight(10.0)),
            child: SvgPicture.asset(
              'assets/icons/Camera Icon.svg',
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF6F7FA),
              shape: BoxShape.circle,
              border: Border(
                left: BorderSide(color: Colors.white, width: 2),
                right: BorderSide(color: Colors.white, width: 2),
                top: BorderSide(color: Colors.white, width: 2),
                bottom: BorderSide(color: Colors.white, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
