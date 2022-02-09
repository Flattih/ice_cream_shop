import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../constants.dart';
import 'components/header.dart';
import 'components/popular_ice_cream_row.dart';
import 'components/search_field.dart';
import 'components/top_flavours_card.dart';
import 'components/top_item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     ScreenUtil.init(
         BoxConstraints(
           maxWidth: MediaQuery.of(context).size.width,
             maxHeight: MediaQuery.of(context).size.height),
         designSize: const Size(231, 501),
         context: context,
         minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(.1.sh),
              const Header(),
              SizedBox(height: 0.050.sh),
              const SearchField(),
              Gap(0.065.sh),
              Text(
                "Top Flavours",
                style: Theme.of(context).textTheme.headline6,
              ),
              Gap(0.020.sh),
              const TopFlavoursCard(),
              const Gap(30),
              Text("Popular Ice Cream",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 12.sp)),
              const Gap(20),
              const PopularIceCreamRow(),
              const Gap(30),
              Text(
                "Top Item",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 12.sp),
              ),
              const Gap(20),
              Row(
                children: const [
                  Expanded(
                    child: TopItemCard(
                      img: "assets/images/ice-cream (4).png",
                      color: Color(0xFFDEF4FF),
                    ),
                  ),
                  Gap(kDefaultPadding / 1.5),
                  Expanded(
                    child: TopItemCard(
                      img: "assets/images/ice-cream (5).png",
                      color: Color(0xFFFEDADC),
                    ),
                  ),
                ],
              ),
              Gap(30.h)
            ],
          ),
        ),
      ),
    );
  }
}






