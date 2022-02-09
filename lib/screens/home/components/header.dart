import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hey Emma\n",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(
                    fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              WidgetSpan(
                child: SizedBox(
                  height: 0.040.sh,
                ),
              ),
              TextSpan(
                text: "What flavor do you like to eat?",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.grey, fontSize: 8.sp),
              ),
            ],
          ),
        ),
        const CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage:
          AssetImage("assets/images/profile_pic.jpg"),
        )
      ],
    );
  }
}