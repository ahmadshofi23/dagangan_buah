import 'package:dagangan_buah/shared/theme.dart';
import 'package:dagangan_buah/ui/widget/item_favourit.dart';
import 'package:flutter/material.dart';

class FavoritPage extends StatelessWidget {
  const FavoritPage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 55),
      padding: EdgeInsets.only(bottom: 33),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kgrey2Color.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Favourite',
          style: blackTextStyle.copyWith(fontSize: 20, fontWeight: light),
        ),
      ),
    );
  }

  Widget gridViewitem(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ItemFavourit();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteColor,
      body: Stack(
        children: [
          Column(
            children: [
              header(),
              Flexible(child: gridViewitem(context)),
            ],
          )
        ],
      ),
    );
  }
}
