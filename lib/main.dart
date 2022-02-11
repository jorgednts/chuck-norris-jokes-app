import 'package:flutter/material.dart';
import 'modules/chuck_norris/pages/categories/categories_page.dart';
import 'modules/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'App Chuck Norris',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFC1007E),
          secondary: const Color(0xFF9E9E9E),
        ),
        toggleableActiveColor: const Color(0xFFC1007E),
        iconTheme: const IconThemeData(
          color: Color(0xFFC1007E),
        ),
        listTileTheme: const ListTileThemeData(iconColor: Color(0xFFC1007E)),
      ),
      home: const CategoriesPage(),
      onGenerateRoute: Routes.generateRoute,

    );
  }
}
