import 'package:flutter/material.dart';
import 'package:zerone/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:zerone/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'ZERONE',
        theme: ThemeData(
          colorScheme: ColorScheme(
            primary: Colors.white, // Warna utama diatur menjadi putih
            primaryContainer:
                Colors.grey[100]!, // Warna latar primer yang sedikit berbeda
            secondary: Colors.black, // Warna sekunder diatur menjadi hitam
            secondaryContainer: Colors.grey[800]!,
            surface: Colors.white, // Warna permukaan juga putih
            background: Colors.white, // Latar belakang putih
            error: Colors.red, // Warna error (tetap merah)
            onPrimary: Colors
                .black, // Teks atau ikon di atas warna primer putih akan berwarna hitam
            onSecondary: Colors
                .white, // Teks di atas warna sekunder hitam akan berwarna putih
            onSurface:
                Colors.black, // Teks di atas permukaan putih atau abu-abu
            onBackground: Colors.black, // Teks di atas latar belakang putih
            onError: Colors.white, // Teks di atas warna error
            brightness: Brightness
                .light, // Menetapkan skema warna ke tema terang (light mode)
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
