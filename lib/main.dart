import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  static const _greenPrimaryValue = 0xFF324660;

  static const MaterialColor kipalogGreen = const MaterialColor(
    _greenPrimaryValue,
    const <int, Color>{
      50:  const Color(0xFFeceff1),
      100: const Color(0xFFcfd8dc),
      200: const Color(0xFFb0bec5),
      300: const Color(0xFF90a4ae),
      400: const Color(0xFF78909c),
      500: const Color(_greenPrimaryValue),
      600: const Color(0xFF607d8b),
      700: const Color(0xFF455a64),
      800: const Color(0xFF37474f),
      900: const Color(0xFF263238),
    },
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: kipalogGreen,
      ),
      routes: {
        "/": (_) => new WebviewScaffold(
          url: "http://54.186.67.85/",
          appBar: new AppBar(
            title: new Text("Kaopiz Kipalog"),
          ),
          withZoom: true,
          withLocalStorage: true,
        )
      }
    );
  }
}