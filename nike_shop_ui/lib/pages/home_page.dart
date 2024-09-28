import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:nike_shop_ui/widgets/all_items_widget.dart';
import 'package:nike_shop_ui/widgets/home_bootom_nav_bar.dart';
import 'package:nike_shop_ui/widgets/role_items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: const Icon(
                        Icons.sort,
                        size: 30,
                        color: Color(0xff475269),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: badges.Badge(
                        position:
                            badges.BadgePosition.topEnd(top: -25, end: -22),
                        badgeContent: const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffF5F9FD),
                          ),
                        ),
                        badgeStyle: const badges.BadgeStyle(
                          badgeColor: Colors.redAccent,
                        ),
                        child: const Icon(
                          color: Color(0xff475269),
                          Icons.notifications_active_rounded,
                          size: 30,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                    color: const Color(0xffF5F9FD),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff475269).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Seaerch',
                            hintStyle: TextStyle(color: Color(0xff475269))),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 25,
                      color: Color(0xff475269),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const RoleItemsWidget(),
              const SizedBox(
                height: 15,
              ),
              const AllItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBootomNavBar(),
    );
  }
}
