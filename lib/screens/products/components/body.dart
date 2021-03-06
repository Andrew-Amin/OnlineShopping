import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'page_header.dart';
import 'product_card.dart';
import 'search_and_filter.dart';
import 'sliver_header_delegate.dart';

class ProductsBody extends StatelessWidget {
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
    return SafeArea(
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
          slivers: [
            _buildProductsSliverList(),
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SliverHeaderDelegate(
                categories: _categories,
              ),
            ),
            _buildProductsSliverGrid(),
          ],
        ),
      ),
    );
  }

  SliverList _buildProductsSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          PageHeader(),
          Text(
            'Newest products',
            style: kHeadingStyle,
          ),
          SizedBox(height: getProportionateScreenHeight(15.0)),
          SearchAndFilter(textEditingController: _textEditingController),
        ],
      ),
    );
  }

  SliverGrid _buildProductsSliverGrid() {
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
}
