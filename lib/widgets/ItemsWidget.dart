import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xff4c53a5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/1.png',
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff4c53a5),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Write description of product",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff4c53a5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c53a5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xff4c53a5),
                      )
                    ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
