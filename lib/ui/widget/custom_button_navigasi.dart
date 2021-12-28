import 'package:dagangan_buah/shared/theme.dart';
import 'package:dagangan_buah/ui/widget/custom_item_button.dart';
import 'package:flutter/material.dart';

class CustomButtonNavigasi extends StatelessWidget {
  const CustomButtonNavigasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 92,
        decoration: BoxDecoration(
          color: kwhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomItemButton(
              imageUrl: 'assets/icons/shop.png',
              title: 'Shop',
            ),
            CustomItemButton(
              imageUrl: 'assets/icons/explore.png',
              title: 'Explore',
            ),
            CustomItemButton(
              imageUrl: 'assets/icons/cart.png',
              title: 'Cart',
            ),
            CustomItemButton(
              imageUrl: 'assets/icons/favorit.png',
              title: 'Favorit',
            ),
            CustomItemButton(
              imageUrl: 'assets/icons/account.png',
              title: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
