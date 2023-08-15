import 'package:flutter/material.dart';
import 'package:paydai/bottomNav.dart';
import 'package:paydai/utils/palette.dart';
import 'utils/navigation.dart' as route;

void main() {
  runApp(const PayDai());
}

class PayDai extends StatelessWidget {
  const PayDai({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.landingPage,
      title: 'PayDai',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Palette.kToDark)
            .copyWith(secondary: Colors.greenAccent),
      ),
      home: const BottomNav(),
    );
  }
}
