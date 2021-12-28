import 'package:dagangan_buah/shared/theme.dart';
import 'package:flutter/material.dart';

class CardItemFruit extends StatelessWidget {
  const CardItemFruit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 173.32,
      height: 248.51,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: kgrey2Color),
        // color: kgrey2Color,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 25.56, top: 25.56),
            width: 99.89,
            height: 79.43,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/banana.png',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Organic Bananas',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '7pcs, Priceg',
                  style: greyTextStyle,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4.99',
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 45.67,
                      height: 45.67,
                      decoration: BoxDecoration(
                        color: kgreenColor,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/plus.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
