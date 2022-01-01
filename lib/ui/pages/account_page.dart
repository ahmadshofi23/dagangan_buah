import 'package:dagangan_buah/shared/theme.dart';
import 'package:dagangan_buah/ui/widget/expandable_account.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 30,
        left: 25,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/account.png',
                width: 63.44,
                height: 63.44,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Afsar Hossen',
                        style: blackTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 11),
                      Image.asset(
                        'assets/icons/edit.png',
                        width: 15,
                        height: 15,
                      ),
                    ],
                  ),
                  Text(
                    'Imshuvo97@gmail.com',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget contentList() {
    return Container(
      // margin: EdgeInsets.only(bottom: 60),
      child: Column(
        children: [
          ExpandableAccount(
            imageUrl: 'assets/icons/orders.png',
            title: 'Orders',
          ),
          ExpandableAccount(
            imageUrl: 'assets/icons/identitas.png',
            title: 'My Details',
          ),
          ExpandableAccount(
            imageUrl: 'assets/icons/location_white.png',
            title: 'Delivery Address',
          ),
          ExpandableAccount(
            imageUrl: 'assets/icons/payment.png',
            title: 'Payment Methods',
          ),
          ExpandableAccount(
            imageUrl: 'assets/icons/promo.png',
            title: 'Promo Cord',
          ),
          ExpandableAccount(
            imageUrl: 'assets/icons/bell.png',
            title: 'Notification',
          ),
          ExpandableAccount(
            imageUrl: 'assets/icons/help.png',
            title: 'Help',
          ),
          ExpandableAccount(
            imageUrl: 'assets/icons/about.png',
            title: 'About',
          ),
        ],
      ),
    );
  }

  Widget button() {
    return Container(
      width: double.infinity,
      height: 67,
      margin: EdgeInsets.only(top: 40, bottom: 150, left: 25, right: 25),
      decoration: BoxDecoration(
        color: textfieldfill,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 26),
            child: Image.asset(
              'assets/icons/logout_kanan.png',
              width: 18,
              height: 18,
            ),
          ),
          SizedBox(width: 100),
          Text(
            'Log Out',
            style: greenTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
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
        header(),
        contentList(),
        button(),
        // SizedBox(height: 50),
      ],
    );
  }
}
