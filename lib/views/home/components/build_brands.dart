import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/views/home/components/title_see_more.dart';

class BuildBrands extends StatelessWidget {
  const BuildBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> brandsImage = [
      'https://upload.wikimedia.org/wikipedia/ar/f/fe/American-eagle-outfitters-logo.png?20130809100513',
      'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/352526017_807364164080463_2175349675576047598_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=2An6aLPm8fcAX8t-Cxi&_nc_ht=scontent.fcai21-2.fna&oh=00_AfApYZhVK-K0w_LzktpMFjymvXhMsOwmYIenWUYUhBrwrw&oe=6583ABA2',
      'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/394190088_718586616979997_5626866094725989359_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=0iJpbBpO7GQAX_u-v0R&_nc_ht=scontent.fcai21-2.fna&oh=00_AfCyJRL13kce8QZOcvx989OCg0owYShoIgxH0jFObN95cQ&oe=6583B5E3',
      'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/387775807_701289502021123_1536940259267593785_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=gc7XgCUBNssAX9K6One&_nc_ht=scontent.fcai21-2.fna&oh=00_AfCI72hrIXbpndNVk15BBIMJyLOQCP5rN43mHb7rZQfloQ&oe=6584AED2'
    ];
    List<String> brandsName = ['American', 'onyu', 'RAVIN', 'active'];
    return Column(
      children: [
        TitleSeeMore(
          onPressed: () {},
          title: 'Brands',
        ),
        SizedBox(height: 13.h),
        SizedBox(
          height: 115.0.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandsName.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 76.h,
                          width: 76.w,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFECDF),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Image.network(brandsImage[index],
                              width: 35.0.w, height: 35.0.h),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(brandsName[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15.sp),
                            textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
