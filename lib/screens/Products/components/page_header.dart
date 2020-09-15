import 'package:flutter/material.dart';
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
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.sort),
          iconSize: getProportionateScreenWidth(30),
          padding: EdgeInsets.zero,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/andrew.jpg'),
          radius: getProportionateScreenWidth(20),
        ),
      ],
    );
  }
}
