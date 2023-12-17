import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/components/custom_appbar.dart';
import 'package:slash_detailview/components/custom_button.dart';
import 'package:slash_detailview/helper/app_router/app_router.dart';
import 'package:slash_detailview/helper/dummy_data.dart';
import 'package:slash_detailview/views/cart/view.dart';
import 'package:slash_detailview/views/produc_details/components/build_carousel.dart';
import 'package:slash_detailview/views/produc_details/components/build_color_selection.dart';
import 'package:slash_detailview/views/produc_details/components/build_description.dart';
import 'package:slash_detailview/views/produc_details/components/build_material_selection.dart';
import 'package:slash_detailview/views/produc_details/components/build_product_info.dart';
import 'package:slash_detailview/views/produc_details/components/build_quantity.dart';
import 'package:slash_detailview/views/produc_details/components/build_size_selection.dart';
import 'package:slash_detailview/views/produc_details/components/build_variant_images.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class ProductDetailsView extends StatefulWidget {
  final int productId;

  const ProductDetailsView({Key? key, required this.productId})
      : super(key: key);

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    int initialPage = 0;

    var pageController =
        PageController(initialPage: initialPage, viewportFraction: 0.8);

    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (BuildContext context, state) {
        // var productCubit = BlocProvider.of<ProductDetailsCubit>(context);
        var productCubit = context.read<ProductDetailsCubit>();
        return Scaffold(
          appBar: CustomAppBar(title: "Product Details"),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            children: [
              // Image Carousel
              SizedBox(
                height: 250.h,
                child: PageView.builder(
                    onPageChanged: (index) {
                      productCubit.updateSelectedImage(index);
                    },
                    itemCount: products[widget.productId]
                        .variations[productCubit.selectedColorIndex]
                        .productVarientImages
                        .length,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      return BuildCarousel(
                          pageController: pageController,
                          image: products[widget.productId]
                              .variations[productCubit.selectedColorIndex]
                              .productVarientImages[index],
                          index: index);
                    }),
              ),

              SizedBox(height: 16.h),
              // Thumbnails
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildVariantImages(
                    pageController: pageController,
                    images: products[widget.productId]
                        .variations[productCubit.selectedColorIndex]
                        .productVarientImages,
                  ),
                ],
              ),
              BuildProductInfo(
                  cubit: productCubit, product: products[widget.productId]),
              // Color Selection
              BuildColorSelection(
                  productCubit: productCubit, productId: widget.productId),
              // Size Selection
              BuildSizeSelection(
                  productCubit: productCubit, productId: widget.productId),
              // Material Selection
              BuildMaterialSelection(
                  productCubit: productCubit, productId: widget.productId),

              BuildDescription(productId: widget.productId),
              const BuildQuantity(),
              SizedBox(height: 60.h),
            ],
          ),
          persistentFooterButtons: [
            CustomButton(
              onTap: () {
                AppRouter.navigateTo(
                    context,
                    CartView(
                      productId: widget.productId,
                    ));
              },
              title: "Add to cart",
            ),
          ],
        );
      },
    );
  }
}
