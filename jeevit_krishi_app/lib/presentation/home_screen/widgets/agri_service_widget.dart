import 'package:flutter/material.dart';
import 'package:jeevit_krishi_app/theme/const_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AgriServiceWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const AgriServiceWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: ConstColors.lightGreen,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 3.2.h, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
