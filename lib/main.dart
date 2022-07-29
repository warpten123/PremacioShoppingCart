import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:premacio_final_provider/providers/shopping_cart_provider.dart';
import 'package:premacio_final_provider/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //two or more providers
      providers: [
        ChangeNotifierProvider(
          create: (context) => Cart(),
        )
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomePage()),
    );
  }
}
