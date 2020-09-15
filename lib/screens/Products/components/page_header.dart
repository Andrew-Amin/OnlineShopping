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
        Icon(
          Icons.sort,
          size: getProportionateScreenWidth(30),
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/andrew.jpg'),
          radius: getProportionateScreenWidth(20),
        ),
      ],
    );
  }
}
