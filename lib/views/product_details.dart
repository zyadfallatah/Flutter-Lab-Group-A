import 'package:flutter/material.dart';
import 'package:flutter_store/util/app_colors.dart';
import 'package:flutter_store/widgets/primary_icon.dart';
import 'package:flutter_store/widgets/product_card.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.card});
  final ProductCard card;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors().mainColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            Text(
              "Details",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            Icon(Icons.favorite, color: Colors.white),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  card.imagePath,
                  width: 400,
                  height: 220,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                card.title,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Row(
                spacing: 16,
                children: [
                  PrimaryIcon(icon: Icons.laptop),
                  PrimaryIcon(icon: Icons.delivery_dining),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Text(
                    card.rating.toString(),
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "(${card.peopleRating})",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              Divider(),
              Text(
                "Description",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Text(
                    card.description,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    "See More",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors().actionColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomAppBar(
        color: AppColors().mainColor,
        padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "\$${card.amount}",
                  style: TextStyle(
                    color: AppColors().actionColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: AppColors().actionColor,
                minimumSize: Size(180, 50),
              ),
              child: Text("Buy Now", style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
