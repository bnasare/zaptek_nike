import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaptek_ui/widgets/bottom_bar_widget.dart';

import 'provider/product_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return ProductProvider();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // useMaterial3: true,
            ),
        home: const BottomBarScreen(),
      ),
    );
  }
}
