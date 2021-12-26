import 'package:dagangan_buah/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
