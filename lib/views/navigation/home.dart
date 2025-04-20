import 'package:flutter/material.dart';
import 'package:flutter_store/util/app_colors.dart';
import 'package:flutter_store/widgets/product_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors().backgroundColor,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(8),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: .55,
              crossAxisCount: 2,
              children: [
                ProductCard(
                  title: "Laptop",
                  description:
                      "amazing laptop that works amazing i will type more text to test hwlndwldkqbdkqdvbjqvdkqbdkqb",
                  amount: 2999.99,
                  imagePath: "images/hero.jpg",
                  rating: 5.0,
                  peopleRating: 419,
                ),
                ProductCard(
                  title: "Iphone",
                  description: "Powerful phone capable of doing mulittask",
                  amount: 2699.99,
                  imagePath: "images/iphone.jpg",
                  rating: 4.3,
                  peopleRating: 2751,
                ),
                ProductCard(
                  title: "Desktop",
                  description: "Powerful phone capable of doing mulittask",
                  amount: 6299.99,
                  imagePath: "images/desktop.jpg",
                  rating: 4.7,
                  peopleRating: 30,
                ),
                ProductCard(
                  title: "Monitor",
                  description: "Powerful phone capable of doing mulittask",
                  amount: 1899.99,
                  imagePath: "images/apple-monitor.jpg",
                  rating: 3.2,
                  peopleRating: 152,
                ),
                ProductCard(
                  title: "Laptop 2",
                  description: "Powerful phone capable of doing mulittask",
                  amount: 1099.99,
                  imagePath: "images/hero2.jpg",
                  rating: 2.1,
                  peopleRating: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
