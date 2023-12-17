import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/app_router/app_router.dart';
import 'package:slash_detailview/helper/dummy_data.dart';
import 'package:slash_detailview/views/home/components/build_product_item.dart';
import 'package:slash_detailview/views/home/components/title_see_more.dart';
import 'package:slash_detailview/views/produc_details/view.dart';

class BuildNewArrivals extends StatefulWidget {
  @override
  State<BuildNewArrivals> createState() => _BuildNewArrivalsState();
}

class _BuildNewArrivalsState extends State<BuildNewArrivals> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: const TitleSeeMore(
            title: "NEW ARRIVALS",
          ),
        ),
        SizedBox(
          height: 250.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            // padding: EdgeInsets.symmetric(horizontal: 4.w),
            itemBuilder: (context, index) {
              return InkWell(
                  borderRadius: BorderRadius.circular(15.r),
                  onTap: () {
                    AppRouter.navigateTo(
                        context,
                        ProductDetailsView(
                          productId: index,
                        ));
                  },
                  child: ProductItem(
                    index: index,
                  ));
            },
          ),
        ),
      ],
    );
  }
}
