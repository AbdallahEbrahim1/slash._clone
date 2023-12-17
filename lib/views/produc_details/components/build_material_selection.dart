import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/dummy_data.dart';
import 'package:slash_detailview/views/produc_details/components/build_properties_variation.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class BuildMaterialSelection extends StatelessWidget {
  const BuildMaterialSelection(
      {Key? key, required this.productCubit, required this.productId})
      : super(key: key);

  final ProductDetailsCubit productCubit;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selected Material',
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
                  productCubit.updateSelectedMaterial(index);
                },
                child: BuildPropertiesVariation(
                  selected: productCubit.selectedMaterialIndex == index,
                  text: products[productId]
                      .availableProperties[2]
                      .propertyValues[index],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 5.w),
            itemCount: products[productId]
                .availableProperties[2]
                .propertyValues
                .length,
          ),
        ),
      ],
    );
  }
}
