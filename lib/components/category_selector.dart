import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

typedef ValueChanged<T> = void Function(T value);

class CategorySelector extends StatefulWidget {
  CategorySelector(
      {this.height = 50,
      this.onClick,
      this.categories,
      this.backgroundColor = Colors.transparent});

  final double height;
  final ValueChanged<String> onClick;
  final List categories;
  final Color backgroundColor;
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      color: widget.backgroundColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                if (widget.onClick != null)
                  widget.onClick(widget.categories[index]);
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                  right: getProportionateScreenWidth(kDefaultPadding)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      widget.categories[index],
                      style: TextStyle(
                        color: index == selectedIndex
                            ? kPrimaryColor
                            : kSecondaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 30,
                    margin: EdgeInsets.only(top: 5.0),
                    //padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == selectedIndex
                          ? kPrimaryColor
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
