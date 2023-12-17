import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_detailview/views/produc_details/controller/cubit.dart';
import 'package:slash_detailview/views/splash/view.dart';

import 'helper/helper_methods.dart';

/// This App State Management use bloc(cubit).
/// APP Files Contains 1-components - 2-helper - 3-models - 4-views

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductDetailsCubit>(
      create: (context) => ProductDetailsCubit(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            platform: TargetPlatform.iOS,
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
          ),
          builder: (context, child) => child!,
          home: const SplashView(),
        ),
      ),
    );
  }
}
