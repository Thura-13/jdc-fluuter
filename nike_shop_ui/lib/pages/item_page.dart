import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nike_shop_ui/widgets/item_bottom_nav_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1),
                        ],
                      ),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff475269),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1),
                        ],
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.39,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 70, top: 30),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          color: const Color(0xff475269),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Image.asset(
                      'images/1.png',
                      height: 250,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.46,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xffF5F9FD),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff475269).withOpacity(0.7),
                        blurRadius: 7,
                        spreadRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Nike Shoe',
                          style: TextStyle(
                              color: Color(0xff475269),
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                        Text(
                          '\$55',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 25),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        itemCount: 5,
                        initialRating: 4,
                        itemSize: 20,
                        itemPadding: const EdgeInsets.only(left: 5),
                        itemBuilder: (context, _) => const Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                        onRatingUpdate: (value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'This is description of the shoe product.This is description of the shoe product.This is description of the shoe product.This is description of the shoe product.',
                      style: TextStyle(
                        color: Color(0xff475269),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Size:',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff475269),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            for (int i = 5; i < 10; i++)
                              Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.center,
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF5F9FD),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0xff475269)
                                            .withOpacity(0.3),
                                        blurRadius: 5,
                                        spreadRadius: 1),
                                  ],
                                ),
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
