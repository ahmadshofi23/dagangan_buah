import 'package:dagangan_buah/cubit/page_cubit.dart';
import 'package:dagangan_buah/ui/pages/account_page.dart';
import 'package:dagangan_buah/ui/pages/cart_page.dart';
import 'package:dagangan_buah/ui/pages/explore_page.dart';
import 'package:dagangan_buah/ui/pages/favorit_page.dart';
import 'package:dagangan_buah/ui/pages/home_page.dart';
import 'package:dagangan_buah/ui/pages/main_page.dart';
import 'package:dagangan_buah/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/main': (context) => MainPage(),
          '/home': (context) => HomePage(),
          '/explore': (context) => ExplorePage(),
          '/cart': (context) => CartPage(),
          '/favorit': (context) => FavoritPage(),
          '/account': (context) => AccountPage(),
        },
      ),
    );
  }
}
