import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/di.dart';

import 'features/user/presentation/views/user_list_view.dart';

void main() async {
  await initDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: UserListView(),
      //  home: const NewsView(),
    );
  }
}
