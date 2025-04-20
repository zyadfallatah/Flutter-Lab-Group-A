import 'package:flutter/material.dart';
import 'package:flutter_store/util/app_colors.dart';
import 'package:flutter_store/views/products.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().mainColor,
      appBar: AppBar(backgroundColor: AppColors().mainColor),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "images/hero3.png",
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(28),

                child: Column(
                  spacing: 16,
                  children: [
                    Text(
                      "Realiable Device Store, Safe, Profesinaal and Quick",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Explore all the available devices, compativtive pricing",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Products()),
                        );
                      },
                      style: FilledButton.styleFrom(
                        minimumSize: Size(double.infinity, 56),
                        backgroundColor: Colors.indigoAccent,
                      ),
                      child: Text(
                        "Get To Shopping",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
