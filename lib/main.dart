// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/navpages/book_now_page.dart';
import 'package:travel_app/pages/navpages/login_page.dart';
import 'package:travel_app/pages/welcome_page.dart';
import 'package:travel_app/widgets/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomePage(),
      // BlocProvider<AppCubits>(
      //   create: (context) => AppCubits(),
      //   child: AppCubitLogics(),
      // )
    );
  }
}
