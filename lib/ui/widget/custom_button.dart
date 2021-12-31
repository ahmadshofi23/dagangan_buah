import 'package:dagangan_buah/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: kgreenColor,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Center(
        child: Text('Add To Basket',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
            )),
      ),
    );
  }
}
