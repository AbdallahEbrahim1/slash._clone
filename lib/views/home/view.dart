import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/components/custom_appbar.dart';

import 'components/build_brands.dart';
import 'components/build_new_arrivals.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Slash.",
        isLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20.r,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.r),
        children: [
          const BuildBrands(),
          BuildNewArrivals(),
        ],
      ),
    );
  }
}
