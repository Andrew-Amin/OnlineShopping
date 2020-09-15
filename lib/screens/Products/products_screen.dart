import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/category_selector.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

import '../../size_config.dart';
import 'components/page_header.dart';
import 'components/product_card.dart';
import 'components/search_and_filter.dart';

class ProductsScreen extends StatelessWidget {
  static String routeName = "/Products";
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _categories = [
    'Popular',
    'Shoes',
    'BackPack',
    'T-shirt',
    'Gloves',
    'Shirts'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(kDefaultPadding),
            right: getProportionateScreenHeight(kDefaultPadding),
            left: getProportionateScreenHeight(kDefaultPadding),
          ),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            slivers: [
              buildProductsSliverList(),
              buildProductsSliverGrid(),
            ],
          ),
        ),
      ),
    );
  }

  SliverList buildProductsSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          PageHeader(),
          Text(
            'Newest products',
            style: headingStyle,
          ),
          SizedBox(
            height: getProportionateScreenHeight(15.0),
          ),
          SearchAndFilter(textEditingController: _textEditingController),
          CategorySelector(
            height: getProportionateScreenHeight(50.0),
            categories: _categories,
          ),
        ],
      ),
    );
  }

  SliverGrid buildProductsSliverGrid() {
    return SliverGrid.count(
      childAspectRatio: 1 / 1.3,
      crossAxisCount: 2,
      mainAxisSpacing: getProportionateScreenWidth(10.0),
      crossAxisSpacing: getProportionateScreenWidth(5.0),
      children: [
        ...List.generate(
          demoProducts.length,
          (index) {
            Product _product = demoProducts[index];
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: ProductCard(product: _product),
            );
          },
        ),
      ],
    );
  }

//  SliverAppBar buildProductsSliverAppBar() {
//    return SliverAppBar(
//      elevation: 0,
//      backgroundColor: Colors.white,
//      leading: IconButton(
//        icon: SvgPicture.asset(
//          'assets/icons/sort.svg',
//          height: getProportionateScreenWidth(50.0),
//        ),
//        onPressed: () {},
//      ),
//      actions: [
//        CircleAvatar(
//          backgroundImage: AssetImage('assets/images/andrew.jpg'),
//        ),
//      ],
//    );
//  }
}
