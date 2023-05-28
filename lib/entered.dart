// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:a001/detail_page.dart';

class Wear {
  String img;
  String price;
  String name;
  Wear({required this.img, required this.price, required this.name});
}

List<Wear> items = [
  Wear(img: "assets/images/person-3.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-1.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-2.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-4.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-5.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-6.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-7.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-3.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-4.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-5.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-6.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-7.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-3.jpg", price: "134", name: "Retro Blazer"),
  Wear(img: "assets/images/person-5.jpg", price: "134", name: "Retro Blazer"),
];

class WomenBlazersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.grey.shade500,
                    ),
                    Text(
                      "Women's Blazers",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 14,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child:GridView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (
                                (context) => ItemDetailPage(
                                  wear: items[index],
                                )
                              ),
                            ),
                        );
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Container(
                              child: Image.asset(
                                "${items[index].img}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "\$ ${items[index].price}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " ${items[index].name}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                ),
              

                // child: MasonryGridView.count(
                //   crossAxisCount: 4,
                //   mainAxisSpacing: 4,
                //   crossAxisSpacing: 4,
                //   itemBuilder: (context, index) {
                //     return Tile(
                //       index: index,
                //       extent: (index % 5 + 1) * 100,
                //     );
                //   },
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
