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
              child: Image.asset(imageUrl,
                  width: 30,
                  height: 30,
                  color: context.read<PageCubit>().state == index
                      ? kgreenColor
                      : kblackColor),
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: context.read<PageCubit>().state == index
                  ? greenTextStyle.copyWith(fontWeight: bold)
                  : blackTextStyle.copyWith(fontWeight: bold),
            ),
          ],
        ),
      ),
    );
  }
}
