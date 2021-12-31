import 'package:dagangan_buah/cubit/page_cubit.dart';
import 'package:dagangan_buah/shared/theme.dart';
import 'package:dagangan_buah/ui/pages/account_page.dart';
import 'package:dagangan_buah/ui/pages/cart_page.dart';
import 'package:dagangan_buah/ui/pages/detail_page.dart';
import 'package:dagangan_buah/ui/pages/explore_page.dart';
import 'package:dagangan_buah/ui/pages/favorit_page.dart';
import 'package:dagangan_buah/ui/pages/home_page.dart';
import 'package:dagangan_buah/ui/widget/custom_item_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ExplorePage();
        case 2:
          return CartPage();
        case 3:
          return FavoritPage();
        case 4:
          return AccountPage();
        default:
          return HomePage();
      }
    }

    Widget customButton() {
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
                index: 0,
                imageUrl: 'assets/icons/shop.png',
                title: 'Shop',
              ),
              CustomItemButton(
                index: 1,
                imageUrl: 'assets/icons/explore.png',
                title: 'Explore',
              ),
              CustomItemButton(
                index: 2,
                imageUrl: 'assets/icons/cart.png',
                title: 'Cart',
              ),
              CustomItemButton(
                index: 3,
                imageUrl: 'assets/icons/favorit.png',
                title: 'Favorit',
              ),
              CustomItemButton(
                index: 4,
                imageUrl: 'assets/icons/account.png',
                title: 'Account',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kgreyColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButton(),
            ],
          ),
        );
      },
    );
  }
}
