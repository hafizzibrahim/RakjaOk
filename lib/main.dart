import 'package:flutter/material.dart';
import 'package:rakja_ok/page/pages.dart';
import 'package:rakja_ok/shared/shared.dart';

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
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
              backgroundColor: whiteColor,
              elevation: 0,
              iconTheme: IconThemeData(color: blackColor),
              centerTitle: true,
              titleTextStyle:
              blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold))),
      routes: {
        '/': (context) => const MainPage(),
        '/penghitung-page': (context) => const PengitungPage(),
        '/main-page': (context) => const MainPage(),
        '/penghitung-kendaraan-page': (context) => const PenghitungKendaraanPage(),
        '/spesifikasi-jalan-page': (context) => const SpesifikasiJalanPage(),
        '/analisis-jalan-page': (context) => const AnalisisJalanPage(),
        '/analisis-page': (context) => const AnalisisPage()
      },
    );
  }
}
