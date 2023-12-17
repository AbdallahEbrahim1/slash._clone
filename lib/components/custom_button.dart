import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  const CustomButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r),
          color: const Color.fromRGBO(184, 240, 47, 1),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
