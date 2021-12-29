import 'package:dagangan_buah/cubit/page_cubit.dart';
import 'package:dagangan_buah/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomItemButton extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String title;

  const CustomItemButton({
    required this.index,
    required this.imageUrl,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        // margin: EdgeInsets.only(left: 33, right: 33),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              width: 30,
              height: 30,
              // color: kwhiteColor,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: blackTextStyle.copyWith(fontWeight: bold),
            ),
          ],
        ),
      ),
    );
  }
}
