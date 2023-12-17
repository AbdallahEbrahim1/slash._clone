import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/models/product_model.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class BuildProductNameAndPrice extends StatelessWidget {
  final ProductDetailsCubit cubit;
  final Product product;

  const BuildProductNameAndPrice(
      {super.key, required this.cubit, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 1,
        ),
        SizedBox(height: 16.h),
        Text(
            "EGP ${product.variations[cubit.selectedSizeIndex].price.toString()}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
