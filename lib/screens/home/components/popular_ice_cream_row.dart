import 'package:flutter/material.dart';
import 'package:ice_cream_shop/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/category.dart';
import 'little_ice_cream_card.dart';

class PopularIceCreamRow extends StatelessWidget {
  const PopularIceCreamRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demoCategories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: LittleIceCreamCard(
                press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    ),
                imgBgColor: demoCategories[index].imgBgColor,
                textBgColor: demoCategories[index].textBgColor,
                img: demoCategories[index].img,
                iceCreamType: demoCategories[index].title),
          ),
        ),
      ),
    );
  }
}
