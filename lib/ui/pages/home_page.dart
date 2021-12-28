import 'package:dagangan_buah/shared/theme.dart';
import 'package:dagangan_buah/ui/widget/custom_button_navigasi.dart';
import 'package:dagangan_buah/ui/widget/custom_item_fruite.dart';
import 'package:dagangan_buah/ui/widget/custom_item_makanan.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget heder() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Container(
            width: 26.48,
            height: 30.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/wortel.png',
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 15.13,
                height: 18.17,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/location.png',
                    ),
                  ),
                ),
              ),
              Text(
                'Dhaka, Banassre',
                style: greyTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: extraBold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 364,
            height: 51.57,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Store',
                prefixIcon: Icon(Icons.search),
                hintStyle: greyTextStyle.copyWith(fontWeight: bold),
                filled: true,
                fillColor: textfieldfill,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: textfieldfill, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: textfieldfill, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 368.2,
            height: 114.99,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/banner.png',
                ),
              ),
            ),
          ),
          // listDataExclusiveOffer(),
          // listDataExclusiveOffer(),
        ],
      ),
    );
  }

  Widget listDataExclusiveOffer() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exclusive Offer',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              Text(
                'See all',
                style: greenTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listDataBestSelling() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Selling',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              Text(
                'See all',
                style: greenTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listDataGroceries() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Groceries',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              Text(
                'See all',
                style: greenTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBahanMakanan(),
                CustomBahanMakanan(),
                CustomBahanMakanan(),
                CustomBahanMakanan(),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
                CardItemFruit(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        heder(),
        listDataExclusiveOffer(),
        listDataBestSelling(),
        listDataGroceries(),
        SizedBox(height: 80),
      ],
    );
  }
}
