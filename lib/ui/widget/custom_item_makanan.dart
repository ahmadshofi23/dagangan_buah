import 'package:dagangan_buah/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBahanMakanan extends StatelessWidget {
  const CustomBahanMakanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 248.19,
      height: 105,
      decoration: BoxDecoration(
        color: kuningmuda.withOpacity(0.2),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 17),
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/sembako.png',
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Text(
            'Pulses',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
