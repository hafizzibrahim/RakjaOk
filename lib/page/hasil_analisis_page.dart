part of 'pages.dart';

class HasilAnalisisPage extends StatelessWidget {
  const HasilAnalisisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('HASIL ANALISIS', style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          hasilContainer(),
          SizedBox(height: 16,),
          hasilContainer()
        ],
      ),
    );
  }

  Widget hasilContainer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: greenColor),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Kapasitas (C)', style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium),),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: greenColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:Text('', textAlign: TextAlign.center,),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Kecepatan Arus Bebas (VB)', style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium),),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: greenColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:Text('', textAlign: TextAlign.center,),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                    children :[
                      Text('Tundaan (Detik)', textAlign: TextAlign.center,),
                      Text('Panjang Antrian (M)', textAlign: TextAlign.center),
                      Text('VT (Km/Jam)', textAlign: TextAlign.center,),
                      Text('Tingkat Pelayanan', textAlign: TextAlign.center),
                    ]),
                TableRow(
                    children :[
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center),
                    ]),
                TableRow(
                    children :[
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center),
                    ]),
                TableRow(
                    children :[
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center,),
                      Text('', textAlign: TextAlign.center),
                    ]),
              ]
          ),
        ],
      ),
    );
  }
}
