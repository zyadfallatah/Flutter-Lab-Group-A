import 'package:flutter/material.dart';
import 'package:flutter_store/util/app_colors.dart';
import 'package:flutter_store/views/navigation/home.dart';
import 'package:flutter_store/widgets/searchBar.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
      backgroundColor: AppColors().mainColor,
    ),
    BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "cart"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
  ];
  List<Widget> views = [Home(), Placeholder(), Placeholder(), Placeholder()];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors().mainColor,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: currentPage == 0 ? ProductSearchbar() : Text(""),
      ),
      body: views.elementAt(currentPage),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: AppColors().actionColor,

        currentIndex: currentPage,
        items: items,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
