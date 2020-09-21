import 'package:flutter/material.dart';
import 'package:shop_app/components/category_selector.dart';

import '../../../size_config.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final List<String> categories;
  SliverHeaderDelegate({this.categories});
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return CategorySelector(
      height: getProportionateScreenHeight(50.0),
      categories: categories,
      backgroundColor: Colors.white,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => getProportionateScreenHeight(70.0);

  @override
  // TODO: implement minExtent
  double get minExtent => getProportionateScreenHeight(50.0);

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
