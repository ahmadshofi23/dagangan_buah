import 'package:dagangan_buah/shared/theme.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandableAccount extends StatelessWidget {
  final String title, imageUrl;
  const ExpandableAccount(
      {required this.imageUrl, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 27),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: kgrey2Color,
            width: 1,
          ),
          bottom: BorderSide(
            color: kgrey2Color,
            width: 1,
          ),
        ),
      ),

      // Nutritions
      child: ExpandablePanel(
        header: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imageUrl,
                width: 20,
                height: 20,
              ),
              SizedBox(width: 20),
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        collapsed: Text(''),
        expanded: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                style: greyTextStyle,
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        ),
        builder: (_, collapsed, expanded) {
          return Container(
            child: Expandable(
              collapsed: collapsed,
              expanded: expanded,
            ),
          );
        },
      ),
    );
  }
}
