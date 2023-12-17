import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildPropertiesVariation extends StatelessWidget {
  final String text;
  final bool selected;

  const BuildPropertiesVariation(
      {super.key, required this.text, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      decoration: BoxDecoration(
          color: selected
              ? const Color.fromRGBO(184, 240, 47, 1)
              : const Color.fromARGB(255, 63, 62, 62),
          borderRadius: BorderRadius.circular(10.r)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: selected ? Colors.black : Colors.white),
      ),
    );
  }
}
