import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
    Key key,
    @required TextEditingController textEditingController,
  })  : _textEditingController = textEditingController,
        super(key: key);

  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: SizedBox(
            height: getProportionateScreenHeight(60.0),
            child: Theme(
              data: Theme.of(context).copyWith(
                  inputDecorationTheme: InputDecorationTheme(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              )),
              child: TextField(
                controller: _textEditingController,
                onChanged: (searchQuery) {},
                cursorColor: kPrimaryColor,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  focusColor: kPrimaryColor,
                  hintText: 'Search products...',
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Theme.of(context).hintColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(kDefaultPadding / 2),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/icons/slider.svg',
            ),
            height: getProportionateScreenHeight(60.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey.shade100,
            ),
          ),
        )
      ],
    );
  }
}
