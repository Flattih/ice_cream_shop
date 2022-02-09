import 'package:flutter/material.dart';
import 'package:ice_cream_shop/screens/home/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // delete theme ,run main dart and paste it start hot reload.
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.yellow),
        appBarTheme: AppBarTheme(
            backgroundColor: const Color(0xFFFAC7D4),
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.pink,
            ),
            toolbarHeight: 105.h),
      ),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomeScreen(),
    );
  }
}
