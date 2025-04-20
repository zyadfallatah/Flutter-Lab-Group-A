import 'package:flutter/material.dart';

class ProductSearchbar extends StatelessWidget {
  const ProductSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 55, 55, 67),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          prefixIcon: Icon(Icons.search),
          fillColor: Color.fromARGB(255, 45, 45, 45),
          filled: true,
          hintText: "Search for a device",
          hintStyle: TextStyle(color: Colors.white),
          prefixIconColor: Colors.white,
        ),
      ),
    );
  }
}
