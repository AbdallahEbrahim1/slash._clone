import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/dummy_data.dart';
import 'package:slash_detailview/views/produc_details/components/build_color_properties.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class BuildColorSelection extends StatelessWidget {
  const BuildColorSelection(
      {Key? key, required this.productCubit, required this.productId})
      : super(key: key);

  final ProductDetailsCubit productCubit;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              productCubit.updateSelectedColor(index);
            },
            child: BuildColorProperties(
              color: products[productId]
                  .availableProperties[0]
                  .propertyValues[index],
              selectedColor: productCubit.selectedColorIndex == index,
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount:
            products[productId].availableProperties[0].propertyValues.length,
      ),
    );
  }
}
