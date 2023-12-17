import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildImageItem extends StatelessWidget {
  final String image;
  final bool isSelect;

  const BuildImageItem({Key? key, required this.image, required this.isSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 45.w,
      decoration: BoxDecoration(
        border: isSelect
            ? Border.all(
                color: Colors.green,
                width: 2.w,
              )
            : null,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Image.network(image, fit: BoxFit.fill)),
    );
  }
}
