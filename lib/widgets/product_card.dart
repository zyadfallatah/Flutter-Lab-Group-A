import 'package:flutter/material.dart';
import 'package:flutter_store/util/app_colors.dart';
import 'package:flutter_store/views/product_details.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.amount,
    required this.rating,
    required this.peopleRating,
  });
  final String title;
  final String description;
  final String imagePath;
  final double amount;
  final double rating;
  final int peopleRating;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors().mainColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 42, 42, 52),
            spreadRadius: 3,
            blurRadius: 8,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Column(
        spacing: 2,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(card: this),
                  ),
                );
              },
              child: Image.asset(
                imagePath,
                width: 250,
                height: 150,
                alignment: Alignment.topLeft,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
            child: Column(
              spacing: 6,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 20,
                  children: [
                    Text(
                      "\$$amount",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors().actionColor,
                        ),
                        child: Text(
                          "+",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            height: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
