import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImgWithBg extends StatelessWidget {
  const ImgWithBg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/ice.png"),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(33.r),
        ),
        color: const Color(0xFFFAC7D4),
      ),
    );
  }
}