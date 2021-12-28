import 'dart:async';

import 'package:dagangan_buah/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreenColor,
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // margin: EdgeInsets.only(left: 73.29),
                width: 54.7,
                height: 63.61,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/icons_wortel.png'))),
              ),
              Container(
                margin: EdgeInsets.only(top: 413.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('nectar'),
                    Text('online groceriet'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
