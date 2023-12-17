import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/dummy_data.dart';

class BuildDescription extends StatelessWidget {
  final int productId;
  const BuildDescription({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0.h),
      child: ExpansionTile(
          title: Text(
            "Description",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 63, 62, 62),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          collapsedBackgroundColor: const Color.fromARGB(255, 63, 62, 62),
          collapsedIconColor: Colors.white,
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          childrenPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          iconColor: Colors.white,
          children: [
            Text(
              products[productId].description,
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            )
          ]),
    );
  }
}
