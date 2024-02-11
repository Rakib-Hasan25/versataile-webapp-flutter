
import 'package:flutter/material.dart';
import 'package:versatilewebsite/design/utils/app_theme.dart';
import 'package:versatilewebsite/project/routes/app_route_config.dart';
// import 'package:versatilewebsite/project/routes/app_route_config.dart';

void main() async {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      title: 'Versatile Labs',
      routerConfig: AppRouter().router,
     
      
    );
  }


 
}