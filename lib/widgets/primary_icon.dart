import 'package:flutter/material.dart';
import 'package:flutter_store/util/app_colors.dart';

class PrimaryIcon extends StatelessWidget {
  const PrimaryIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors().actionColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
