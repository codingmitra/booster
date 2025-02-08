// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// /// Navigation Extensions for [BuildContext]
// extension NavigationExtension on BuildContext {
//   /// Navigates to the [route].
//   Future<T?> push<T>(Widget route) {
//     late PageRoute<T> pageRoute;

//     if (Platform.isIOS) {
//       pageRoute = CupertinoPageRoute(builder: (context) => route);
//     } else if (Platform.isMacOS) {
//       pageRoute = CupertinoPageRoute(builder: (context) => route);
//     } else {
//       pageRoute = MaterialPageRoute(builder: (context) => route);
//     }

//     return Navigator.of(this).push<T?>(pageRoute);
//   }
// }
