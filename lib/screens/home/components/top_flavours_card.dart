import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ice_cream_shop/screens/home/components/price_with_button.dart';

import '../../../constants.dart';

class TopFlavoursCard extends StatelessWidget {
  const TopFlavoursCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 110.h,
          width: 1.sw,
          decoration: BoxDecoration(
            color: const Color(0xFFFEDADC),
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
        ),
        Positioned(
          top: 10,
          left: -20.h,
          child: Image.asset(
            "assets/images/raspberry.png",
            height: 75.h,
            width: 55.w,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 14.h,
          right: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vanilla Ice Cream",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 10.sp),
              ),
              Gap(15.h),
              Row(
                children: [
                  Container(
                    padding:
                    const EdgeInsets.all(kDefaultPadding / 4),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent.withOpacity(0.4),
                      borderRadius:
                      BorderRadius.circular(kDefaultBorderRadius),
                    ),
                    child: Text(
                      " 1 KG ",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 6.sp),
                    ),
                  ),
                  Gap(20.w),
                  Icon(
                    Icons.star,
                    size: 8.sp,
                  ),
                  const Gap(4),
                  Text(
                    "4.9",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 7.sp),
                  ),
                ],
              ),
              Gap(0.1.h),
              const PriceWithButton(gap: 60),
              //RichText(text: TextSpan(children: [TextSpan()]))
            ],
          ),
        ),
      ],
    );
  }
}