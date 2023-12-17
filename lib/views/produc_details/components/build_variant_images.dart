import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/views/produc_details/components/build_image_Item.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class BuildVariantImages extends StatefulWidget {
  final PageController pageController;
  final List<String> images;

  const BuildVariantImages({
    super.key,
    required this.pageController,
    required this.images,
  });

  @override
  State<BuildVariantImages> createState() => _BuildVariantImagesState();
}

class _BuildVariantImagesState extends State<BuildVariantImages> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        var cubit = context.read<ProductDetailsCubit>();
        return SizedBox(
          height: 65.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                cubit.updateSelectedImage(index);
                widget.pageController.animateToPage(index,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn);
              },
              child: BuildImageItem(
                image: widget.images[index],
                isSelect: cubit.selectedImageIndex == index ? true : false,
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(width: 12.w),
            itemCount: widget.images.length,
          ),
        );
      },
    );
  }
}
