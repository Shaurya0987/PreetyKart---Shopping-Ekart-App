import 'package:flutter/material.dart';
import 'package:preetykart/Provider/ThemeProvider.dart';
import 'package:preetykart/Provider/CartProvider.dart';
import 'package:preetykart/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Themeprovider()),
        ChangeNotifierProvider(create: (_) => CartProvider()), // ✔ Added provider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<Themeprovider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: provider.currentTheme,

      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,

        scaffoldBackgroundColor: const Color(0xFF1E1E1E),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2A2A2A),
          elevation: 1,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.white),
        ),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
          titleLarge: TextStyle(color: Colors.white),
        ),

        iconTheme: IconThemeData(color: Colors.white),
      ),

      home: HomeScreen(),
    );
  }
}
