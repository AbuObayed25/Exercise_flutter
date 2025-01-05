// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';
// import 'package:medicare/config/colors.dart';
// import 'package:medicare/ui/login_screen.dart';
//
// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => MyApp(), // Wrap your app
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SigninScreen(),
//       theme: ThemeData(
//         brightness: Brightness.light,
//
//       ),
//       darkTheme:ThemeData(
//         brightness: Brightness.dark,
//
//       ),
//       themeMode: ThemeMode.system,
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'home_screen.dart';

void main(){
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
