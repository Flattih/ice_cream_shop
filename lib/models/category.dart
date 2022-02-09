import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  final String img, title;
  final Color imgBgColor, textBgColor;

  Category(
      {required this.img,
      required this.title,
      required this.imgBgColor,
      required this.textBgColor});
}

List<Category> demoCategories = [
  Category(
    img: "assets/images/ice-cream (2).png",
    imgBgColor: const Color(0xFFFC5293),
    textBgColor: const Color(0xFFFEDADC),
    title: "Vanilla",
  ),
  Category(
    img: "assets/images/banana-split.png",
    imgBgColor:const Color(0xFFFCD98C) ,
    textBgColor:const Color(0xFFFFEFCB) ,
    title: "Banana",
  ),
  Category(
    img: "assets/images/ice-cream (3).png",
    imgBgColor: const Color(0xFFADC3EF),
    textBgColor: const Color(0xFFD3DDFF),
    title: "Coconut",
  ), Category(
    img: "assets/images/ice-cream (2).png",
    imgBgColor: const Color(0xFFFC5293),
    textBgColor: const Color(0xFFFEDADC),
    title: "Vanilla",
  ),
  Category(
    img: "assets/images/banana-split.png",
    imgBgColor:const Color(0xFFFCD98C) ,
    textBgColor:const Color(0xFFFFEFCB) ,
    title: "Banana",
  ),
  Category(
    img: "assets/images/ice-cream (3).png",
    imgBgColor: const Color(0xFFADC3EF),
    textBgColor: const Color(0xFFD3DDFF),
    title: "Coconut",
  ),
];
