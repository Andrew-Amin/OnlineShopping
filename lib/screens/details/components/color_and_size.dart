import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            style: TextStyle(color: kTextColor),
            children: [
              TextSpan(text: "Size\n"),
              TextSpan(
                text: "${product.size} cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text("Color"),
        Row(
          children: <Widget>[
            ColorDot(color: Color(0xFF356C95)),
            ColorDot(color: Color(0xFFF8C078)),
            ColorDot(color: Color(0xFFA29B9B)),
          ],
        ),
      ],
    );
  }
}

class ColorDot extends StatefulWidget {
  final Color color;
  const ColorDot({
    this.color,
  });

  @override
  _ColorDotState createState() => _ColorDotState();
}

class _ColorDotState extends State<ColorDot> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected == false)
            isSelected = true;
          else
            isSelected = false;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding / 4,
          right: kDefaultPadding / 2,
        ),
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? widget.color : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
