import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoleItemsWidget extends StatelessWidget {
  const RoleItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 5; i++)
            Container(
              height: 180,
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF5F9FD),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1),
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, right: 70),
                        width: 120,
                        height: 110,
                        decoration: BoxDecoration(
                          color: const Color(0xff475269),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xffF5F9FD),
                                blurRadius: 5,
                                spreadRadius: 1),
                          ],
                        ),
                      ),
                      Image.asset(
                        'images/$i.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nike Shoe',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff475269),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Men's Shoe",
                          style: TextStyle(
                            color: const Color(0xff475269).withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Text(
                              '\$50',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xff475269),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xffF5F9FD)
                                          .withOpacity(0.3),
                                      blurRadius: 5,
                                      spreadRadius: 1),
                                ],
                              ),
                              child: const Icon(
                                CupertinoIcons.cart_fill_badge_plus,
                                color: Color(0xffF5F9FD),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
