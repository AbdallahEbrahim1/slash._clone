import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCarouselCard extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  const BuildCarouselCard(
      {super.key, required this.image, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Hero(
            tag: image,
            child: Material(
              color: Colors.transparent,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 3,
                child: Container(
                  width: 270.w,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: InkWell(
                    onTap: onTap,
                    child: Image.network(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
