import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSeeMore extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final bool seeMore;

  const TitleSeeMore(
      {Key? key, this.onPressed, required this.title, this.seeMore = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
        // seeMore?
        const Spacer(),
        seeMore
            ? TextButton(
                onPressed: onPressed,
                child: Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white38,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
