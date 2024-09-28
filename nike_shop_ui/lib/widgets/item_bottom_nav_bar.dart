import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF5F9FD),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xff475269),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xffF5F9FD).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1),
              ],
            ),
            child: const Row(
              children: [
                Text(
                  'Add To Cart',
                  style: TextStyle(
                      color: Color(
                        0xffF5F9FD,
                      ),
                      fontSize: 22),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Color(0xffF5F9FD),
                  size: 32,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xff475269),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xffF5F9FD).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1),
              ],
            ),
            child: const Icon(
              Icons.shopping_bag,
              color: Color(0xffF5F9FD),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
