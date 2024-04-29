part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PengitungPage(),
    AnalisisPage(),
    KecepatanRataPage(),
    HasilAnalisisPage(),
    InformasiPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: greenColor,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          Image.asset('assets/icons/ic_penghitung.png', color: whiteColor, width: 35,),
          Image.asset('assets/icons/ic_pencarian.png', color: whiteColor, width: 35,),
          Image.asset('assets/icons/ic_kecepatan_rata.png', color: whiteColor, width: 35,),
          Image.asset('assets/icons/ic_hasil_analisis.png', color: whiteColor, width: 35,),
          Image.asset('assets/icons/ic_informasi.png', color: whiteColor, width: 35,),
        ],
      ),
    );
  }
}

