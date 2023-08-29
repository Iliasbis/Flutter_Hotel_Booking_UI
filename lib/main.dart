import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/FavoritesPage.dart';
import 'package:hotel_booking/pages/OnboradingPage.dart';
import 'package:hotel_booking/provider/FavoritesProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoritesProvider>(
      create: (_) => FavoritesProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
        ),
        home: const OnboradingPage(),
        routes: {
          '/favorites': (context) => FavoritesPage(),
        },
      ),
    );
  }
}
