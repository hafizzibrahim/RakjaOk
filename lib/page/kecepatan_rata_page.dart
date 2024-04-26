part of 'pages.dart';

class KecepatanRataPage extends StatelessWidget {
  const KecepatanRataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('KECEPATAN RATA RATA', style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          Text('Grafik Kecepatan Rata Rata', style: greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: greenColor)
            ),
          ),
          SizedBox(height: 16,),
          Text('Grafik Kecepatan Rata Rata', style: greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: greenColor)
            ),
          ),
        ],
      ),
    );
  }
}
