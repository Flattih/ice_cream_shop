import 'package:flutter/material.dart';

import '../../../constants.dart';

class LittleIceCreamCard extends StatelessWidget {
  final String img, iceCreamType;
  final Color imgBgColor, textBgColor;
  final VoidCallback press;

  const LittleIceCreamCard({
    Key? key,
    required this.img,
    required this.iceCreamType,
    required this.imgBgColor,
    required this.textBgColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:press,
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                child: Image.asset(img),
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultBorderRadius / 2),
                  color: imgBgColor,
                ),
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.3),
            height: 70,
            child: Text(
              iceCreamType,
              style: Theme.of(context).textTheme.headline6,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(kDefaultBorderRadius / 1.5),
                bottomRight: Radius.circular(kDefaultBorderRadius / 1.5),
              ),
              color: textBgColor,
            ),
          )
        ],
      ),
    );
  }
}
