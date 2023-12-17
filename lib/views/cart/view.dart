import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/components/custom_appbar.dart';
import 'package:slash_detailview/components/custom_button.dart';
import 'package:slash_detailview/helper/dummy_data.dart';

class CartView extends StatelessWidget {
  final int productId;

  const CartView({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Cart',
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16.r),
        itemCount: cartItems.length,
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemBuilder: (context, index) => Container(
          height: 120.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    products[productId]
                        .variations[index]
                        .productVarientImages[0],
                    fit: BoxFit.fill,
                    width: 120.w,
                    height: 100.h,
                  )),
              SizedBox(
                width: 14.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    products[productId].name,
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  ),
                  Text(
                    "EGP ${products[productId].variations[0].price.toString()}",
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        CustomButton(
          onTap: () {},
          title: "Checkout",
        ),
      ],
    );
  }
}
