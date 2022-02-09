import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PriceWithButton extends StatelessWidget {
  final double gap;

  const PriceWithButton({
    Key? key,
    required this.gap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
            style: Theme
                .of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.pinkAccent, fontSize: 8.sp),
            children: [
              const TextSpan(
                text: "\$ ",
              ),
              TextSpan(
                text: "14,60",
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 11.sp),
              )
            ],
          ),
        ),
        Gap(gap.w),
        Container(
          decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
          height: 30.w,
          width: 21.w,
          child:  Icon(Icons.add, color: Colors.white,size: 17.sp,),
        )
      ],
    );
  }
}