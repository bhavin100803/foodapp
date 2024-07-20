import 'package:flutter/material.dart';
import 'package:foodapp/homepage.dart';
import 'package:foodapp/itempage.dart';
import 'package:foodapp/provider/increment_decrement.dart';
import 'package:provider/provider.dart';

import 'cartpage.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_)=>increment_decrement(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/" : (context)=> homeapge(),
        "cartPage" : (context) => cartPage(),
        "itempage" : (context) => itempage(),
      },
    );
  }
}

