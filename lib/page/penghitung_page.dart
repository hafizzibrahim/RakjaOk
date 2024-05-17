part of 'pages.dart';

class PengitungPage extends StatelessWidget {
  const PengitungPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
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
                icon: Image.asset('assets/icons/ic_calculator.png', color: whiteColor, width: 35,),
              ),
              Tab(
                icon: Image.asset('assets/icons/ic_document_gear.png', color: whiteColor, width: 35,),
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
