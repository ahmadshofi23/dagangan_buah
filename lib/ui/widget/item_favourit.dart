import 'package:dagangan_buah/shared/theme.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ItemFavourit extends StatelessWidget {
  const ItemFavourit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kgrey2Color.withOpacity(0.4),
            width: 1,
          ),
        ),
      ),

      // Nutritions
      child: ExpandablePanel(
        header: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/sprite.png',
                    width: 30.91,
                    height: 54.9,
                  ),
                ),
                // SizedBox(width: 20),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sprite Can',
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                          Text(
                            String.fromCharCodes(Runes(
                              '\u0024' + '4.99',
                            )),
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        '325ml, Price',
                        style: greyTextStyle.copyWith(),
                      ),
                    ],
                  ),
                )
              ],
            ),
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
