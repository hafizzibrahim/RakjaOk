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
    AnalisisPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex], // Menampilkan halaman yang sesuai dengan indeks yang dipilih
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: greenColor,
        animationDuration: Duration(milliseconds: 300),
        onTap: (int index) {
          setState(() {
            _currentIndex = index; // Memperbarui indeks halaman yang aktif
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.person),
        ],
      ),
    );
  }
}

