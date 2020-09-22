import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartBody extends StatelessWidget {
  final int numberOfItems;
  CartBody({@required this.numberOfItems});

  String checkItems() {
    return numberOfItems > 1 ? 'items' : 'item';
  }

  @override
  Widget build(BuildContext context) {
    String title = checkItems();
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$numberOfItems $title'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('')],
          )
        ],
      ),
    );
  }
}
