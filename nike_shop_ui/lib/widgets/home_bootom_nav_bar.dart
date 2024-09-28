import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shop_ui/widgets/bottom_cart_sheet.dart';

import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class HomeBootomNavBar extends StatelessWidget {
  const HomeBootomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff475269),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.category_outlined,
            color: Color(0xffF5F9FD),
            size: 32,
          ),
          InkWell(
            onTap: () {
              showSlidingBottomSheet(context, builder: (context) {
                return SlidingSheetDialog(
                    elevation: 8,
                    cornerRadius: 20,
                    builder: (context, state) {
                      return const BottomCartSheet();
                    });
              });
            },
            child: const Icon(
              CupertinoIcons.cart_fill,
              color: Color(0xffF5F9FD),
              size: 32,
            ),
          ),
          const Icon(
            Icons.favorite_border,
            color: Color(0xffF5F9FD),
            size: 32,
          ),
          const Icon(
            Icons.person,
            color: Color(0xffF5F9FD),
            size: 32,
          ),
        ],
      ),
    );
  }
}
