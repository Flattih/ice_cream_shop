import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/img_with_bg.dart';
import 'components/product_details.dart';
class CardClipperPath extends CustomClipper<Path> {
  final double curveRadius;

  CardClipperPath({this.curveRadius = 16.0});

  @override
  Path getClip(Size size) => Path()
    ..quadraticBezierTo(0, curveRadius * .75, curveRadius, curveRadius)
    ..lineTo(size.width - curveRadius, curveRadius)
    ..quadraticBezierTo(size.width, curveRadius, size.width, curveRadius * 2)
    ..lineTo(size.width, size.height)
    ..lineTo(0, size.height);

  @override
  bool shouldReclip(covariant CardClipperPath oldClipper) => oldClipper != this;
}


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: Icon(Icons.arrow_back, size: 19.sp),
              onPressed: () => Navigator.pop(context),
            ),
            Icon(
              Icons.favorite_border,
              size: 19.sp,
            )
          ]),
        ),
      ),
      body: Column(
        children: const [
          Expanded(
            flex: 4,
            child: ImgWithBg(),
          ),
          Expanded(
            flex: 7,
            child: ProductDetails(),
          ),
        ],
      ),
    );
  }
}


