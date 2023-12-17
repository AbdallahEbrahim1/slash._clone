import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/models/product_model.dart';

class BuildInfoBrand extends StatelessWidget {
  final Product product;
  const BuildInfoBrand({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50.w,
          height: 50.h,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25.r)),
          child: Image.network(
            product.brandLogoUrl!,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          product.brandName!,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
