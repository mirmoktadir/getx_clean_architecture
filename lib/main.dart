import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/config/theme/app_themes.dart';
import 'package:getx_clean_architecture/features/news/presentation/views/news_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const NewsView(),
      //  home: const NewsView(),
    );
  }
}
