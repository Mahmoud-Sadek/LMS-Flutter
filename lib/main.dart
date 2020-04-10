import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/home.dart';
import 'Provider/provider.dart';
import 'Screens/splashScreen.dart';
import 'Screens/walkthrough.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context)=>ProviderData(),
      child: MaterialApp(
        home: SplashScreen(),
    ),
    );
  }
}
