import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../constants.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 0.4.w, vertical: kDefaultPadding * 2),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Raspberry Ice Cream",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Gap(10.h),
            Row(
              children: [
                const Icon(
                  Icons.star,
                ),
                const Icon(
                  Icons.star,
                ),
                const Icon(
                  Icons.star,
                ),
                const Icon(
                  Icons.star,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey.shade200,
                ),
                Gap(5.w),
                Text(
                  "4.9 (229 Reviews)",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey.shade400),
                ),
              ],
            ),
            Gap(15.h),
            Row(
              children: [
                Container(
                  height: 17.h,
                  width: 17.h,
                  decoration: const BoxDecoration(gradient: kLinearGradient),
                  child: Icon(
                    Icons.remove,
                    size: 10.sp,
                    color: Colors.white,
                  ),
                ),
                Gap(6.w),
                Text(
                  "2 Kg",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 10.sp),
                ),
                Gap(6.w),
                Container(
                  height: 17.h,
                  width: 17.h,
                  decoration: const BoxDecoration(gradient: kLinearGradient),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 10.sp,
                  ),
                ),
                const Spacer(),
                Text.rich(
                  TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.pink, fontSize: 22.sp),
                    children: [
                      const TextSpan(text: "\$ "),
                      TextSpan(
                        text: "14,60",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontSize: 22.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(25.h),
            Text(
              "The best sorbets come from the best fruits.That's why we hand-pick heritage raspberries and combine them with the sweetest and most juicy strawberries.",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp),
            ),
            Gap(15.h),
            SizedBox(
              height: 36.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Add to Card",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 13.sp, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
            ),
          ], //#FFBAD5,#FE4889
        ),
      ),
    );
  }
}