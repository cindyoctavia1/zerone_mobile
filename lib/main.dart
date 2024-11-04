import 'package:flutter/material.dart';
import 'package:zerone/menu.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
       colorScheme: ColorScheme(
      primary: Colors.white,            // Warna utama diatur menjadi putih
      primaryContainer: Colors.grey[100]!, // Warna latar primer yang sedikit berbeda
      secondary: Colors.black,           // Warna sekunder diatur menjadi hitam
      secondaryContainer: Colors.grey[800]!,
      surface: Colors.white,             // Warna permukaan juga putih
      background: Colors.white,          // Latar belakang putih
      error: Colors.red,                 // Warna error (tetap merah)
      onPrimary: Colors.black,           // Teks atau ikon di atas warna primer putih akan berwarna hitam
      onSecondary: Colors.white,         // Teks di atas warna sekunder hitam akan berwarna putih
      onSurface: Colors.black,           // Teks di atas permukaan putih atau abu-abu
      onBackground: Colors.black,        // Teks di atas latar belakang putih
      onError: Colors.white,             // Teks di atas warna error
      brightness: Brightness.light,      // Menetapkan skema warna ke tema terang (light mode)
    ),


      ),
      home: MyHomePage(),
    );
  }
}

