import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:re_ui/error/no_connection.dart';
// import 'package:re_ui/glass/ui/card_glass.dart';
// import 'package:re_ui/responsive/travel_dashboard/ui/screens/dashboard/main_drt.dart';
// import 'package:re_ui/responsive/travel_dashboard/ui/themes/colors.dart';

// import 'package:re_ui/coffee/ui/screens/splash_coffee.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NoConnectionScreen(),
    );
  }
}


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'UI',
//       theme: ThemeData(
//         canvasColor: kSecondayColor,
//       ),
//       home: const MainDRT(),
//     );
//   }
// }