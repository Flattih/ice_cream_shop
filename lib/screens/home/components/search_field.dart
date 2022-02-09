import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.grey, fontSize: 9.sp),
            fillColor: Colors.grey.withOpacity(0.1),
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Icon(Icons.search, size: 12.sp),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
              BorderRadius.circular(kDefaultBorderRadius),
            ),
          ),
        ),
        Positioned(
          top: 6.h,
          right: -5.w,
          child: Container(
            height: 31.h,
            width: 60.w,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius:
                BorderRadius.circular(kDefaultBorderRadius)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/icons/filter.png",
                    color: Colors.white70,
                  ),
                  Text(
                    "Filter",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(
                        color: Colors.white,
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}