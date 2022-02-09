import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ice_cream_shop/screens/home/components/price_with_button.dart';

import '../../../constants.dart';

class TopItemCard extends StatelessWidget {
  final String img;
  final Color color;

  const TopItemCard({
    Key? key, required this.img, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius:
        BorderRadius.circular(kDefaultBorderRadius),
      ),
      child: Column(
        children: [
          Image.asset(
            img,
            height: 52.h,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Sherbet flavors\n",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 13.sp),
                  ),
                   WidgetSpan(
                    child: Gap(23.h),
                  ),
                  TextSpan(
                    text: "With strawberry jam",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey,fontSize: 11.sp),
                  ),
                ],
              ),
            ),
          ),
          Gap(20.h),
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 1.5),
            child: PriceWithButton(
              gap: 21,
            ),),
        ],
      ),
    );
  }
}