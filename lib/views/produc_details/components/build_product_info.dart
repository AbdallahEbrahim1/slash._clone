import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/models/product_model.dart';
import 'package:slash_detailview/views/produc_details/components/build_product_name_and_price.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class BuildProductInfo extends StatelessWidget {
  final ProductDetailsCubit cubit;
  final Product product;
  const BuildProductInfo(
      {super.key, required this.cubit, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BuildProductNameAndPrice(cubit: cubit, product: product),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.r)),
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
          )
          // BuildInfoBrand(product: product),
        ],
      ),
    );
  }
}
