part of 'pages.dart';

class PengitungPage extends StatelessWidget {
  const PengitungPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: greenColor,
          title: Text('PENGHITUNG', style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 8, color: Colors.yellow),
              borderRadius: BorderRadius.circular(8)
            ),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: PenghitungKendaraanPage(),
            ),
            Center(
              child: SpesifikasiJalanPage(),
            ),
          ],
        ),
      ),
    );
  }
}
