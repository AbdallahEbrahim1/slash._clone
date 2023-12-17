import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/helper/dummy_data.dart';

class ProductItem extends StatelessWidget {
  final int index;

  const ProductItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Container(
        width: 175.w,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // width: 70,
              height: 90,
              decoration: BoxDecoration(
                color: const Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      products[index].variations[0].productVarientImages[0],
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    products[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    products[index].brandLogoUrl!,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Text(
                  "EGP ${products[index].variations[0].price.toString()}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      // fontWeight: FontWeight.w600,
                      height: 1.3),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
