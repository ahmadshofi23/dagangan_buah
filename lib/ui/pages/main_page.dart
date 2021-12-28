import 'package:dagangan_buah/shared/theme.dart';
import 'package:dagangan_buah/ui/pages/home_page.dart';
import 'package:dagangan_buah/ui/widget/custom_button_navigasi.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreyColor,
      body: Stack(
        children: [
          HomePage(),
          CustomButtonNavigasi(),
        ],
      ),
    );
  }
}
