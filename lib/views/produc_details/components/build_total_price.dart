// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:slash_detailview/helper/dummy_data.dart';
// import 'package:slash_detailview/views/produc_details/controller/details_item_cubit.dart';
//
// class Price extends StatelessWidget {
//   const Price({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
//       builder: (BuildContext context, state) {
//         var cubit = context.read<ProductDetailsCubit>();
//         return Text(
//             cubit.totalPrice != -1
//                 ? cubit.totalPrice.toStringAsFixed(2)
//                 : (product.variations[cubit.isColorSelect].price +
//                         product.variations[cubit.isSizeSelect].price +
//                         product.variations[cubit.isMaterialSelect].price)
//                     .toStringAsFixed(2),
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 15.sp,
//               fontWeight: FontWeight.w600,
//             ));
//       },
//     );
//   }
// }
