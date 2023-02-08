import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeddecf2),
      body: ListView(
        children: [
          ItemAppBar(),
          Container(
            color: const Color(0xFFEDECF2),
            //height: 800,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    "assets/1.png",
                    height: 300,
                  ),
                ),
                Arc(
                  edge: Edge.TOP,
                  arcType: ArcType.CONVEY,
                  height: 30,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50, bottom: 15),
                            child: Row(
                              children: const [
                                Text(
                                  "Product Title",
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.favorite,
                                      color: Color(0xFF4C53A5),
                                    ),
                                    onRatingUpdate: (index) {},
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
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
