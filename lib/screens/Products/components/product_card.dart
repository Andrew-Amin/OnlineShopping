import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required Product product,
  })  : _product = product,
        super(key: key);

  final Product _product;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(getProportionateScreenWidth(30.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(30.0)),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(kDefaultPadding / 2),
              ),
              Expanded(
                child: Image.asset(_product.images[0]),
              ),
              SizedBox(
                height: getProportionateScreenHeight(kDefaultPadding / 2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding / 4),
                      child: Text(
                        '\$ ${_product.price}',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18.0),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(
                          getProportionateScreenWidth(kDefaultPadding / 2)),
                      child: SvgPicture.asset('assets/icons/add_white.svg'),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                        ),
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
