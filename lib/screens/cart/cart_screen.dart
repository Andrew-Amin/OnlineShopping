import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart_page";
  final int numberOfItems;
  CartScreen({@required this.numberOfItems});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Check Out',
          style: kHeadingStyle,
        ),
      ),
      body: CartBody(numberOfItems: numberOfItems),
    );
  }
}
/*

RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Check Out\n',
            style: kHeadingStyle,
            children: [
              TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                text: '$numberOfItems items',
              ),
            ],
          ),
        ),

*/
