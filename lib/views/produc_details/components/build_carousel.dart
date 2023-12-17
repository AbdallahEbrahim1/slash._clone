import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/components/custom_appbar.dart';
import 'package:slash_detailview/helper/app_router/app_router.dart';
import 'package:slash_detailview/views/produc_details/components/build_carousel_card.dart';

class BuildCarousel extends StatelessWidget {
  final PageController pageController;
  final int index;
  final String image;

  const BuildCarousel({
    super.key,
    required this.pageController,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value = 6.0;
        if (pageController.position.haveDimensions) {
          value = index.toDouble() - (pageController.page ?? 0);
          value = (value * 0.1).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: BuildCarouselCard(
            image: image,
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute<void>(builder: (context) {
                return Scaffold(
                  appBar: CustomAppBar(
                    title: "",
                  ),
                  body: Container(
                    padding: EdgeInsets.all(10.r),
                    alignment: Alignment.center,
                    child: BuildCarouselCard(
                      image: image,
                      onTap: () {
                        AppRouter.pop(context);
                      },
                    ),
                  ),
                );
              }));
            },
          ),
        );
      },
    );
  }
}
