import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/app_router/app_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? title;
  final List<Widget>? actions;
  bool isLeading;

  CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.isLeading = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title!,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      leadingWidth: 50.w,
      leading: isLeading
          ? IconButton(
              onPressed: () {
                AppRouter.pop(context);
              },
              iconSize: 24,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )
          : null,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.h);
}
