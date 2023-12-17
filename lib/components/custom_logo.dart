import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/res.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BounceInDown(
        duration: const Duration(seconds: 2),
        child: Pulse(
          duration: const Duration(seconds: 4),
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.0.h,
              bottom: 24.h,
            ),
            child: Image.asset(
              Res.logo,
              height: 125.0.h,
              width: 129.0.w,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
