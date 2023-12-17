import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/dummy_data.dart';
import 'package:slash_detailview/views/produc_details/components/build_properties_variation.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class BuildSizeSelection extends StatelessWidget {
  const BuildSizeSelection(
      {Key? key, required this.productCubit, required this.productId})
      : super(key: key);

  final ProductDetailsCubit productCubit;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Size',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 45.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    productCubit.updateSelectedSize(index);
                  },
                  child: BuildPropertiesVariation(
                    selected: productCubit.selectedSizeIndex == index,
                    text: products[productId]
                        .availableProperties[1]
                        .propertyValues[index],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              itemCount: products[productId]
                  .availableProperties[1]
                  .propertyValues
                  .length,
            ),
          ),
        ],
      ),
    );
  }
}
