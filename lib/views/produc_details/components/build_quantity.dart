import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';

class BuildQuantity extends StatelessWidget {
  const BuildQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        var cubit = context.read<ProductDetailsCubit>();
        return Row(
          children: [
            Text(
              'Quantity',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 18.w,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        cubit.adjustQuantity(false);
                      },
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    cubit.quantity.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  InkWell(
                      onTap: () {
                        cubit.adjustQuantity(true);
                      },
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
