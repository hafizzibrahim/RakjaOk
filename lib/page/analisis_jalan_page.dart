part of 'pages.dart';

class AnalisisJalanPage extends StatelessWidget {
  const AnalisisJalanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          Text('Spesifikasi Jalan', style: greenTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: greenColor),
            ),
            child: Column(
                children: [
                  MyTextWidget(title: 'Nilai Kapasitas Jalan (CO)'),
                  MyTextWidget(title: 'Faktor Penyesuaian Lebar Jalur (FCLJ)'),
                  MyTextWidget(title: 'Faktor Penyesuaian Terpisah'),
                  MyTextWidget(title: 'Faktor Penyesuaian Hambatan (FCHS)'),
                  MyTextWidget(title: 'Faktor Penyesuaian Ukuran Kota (FCUK)')
                ],
            ),
          ),

          SizedBox(height: 16,),

          Text('Kecepatan Arus Bebas', style: greenTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: greenColor),
            ),
            child: Column(
              children: [
                MyTextWidget(title: 'Kecepatan Arus Bebas Dasar Kendaraan Ringan (VBD)'),
                MyTextWidget(title: 'Faktor Penyesuaian Lebar Jalur (VBL)'),
                MyTextWidget(title: 'Faktor Penyesuaian Hambatan (FVBHS)'),
                MyTextWidget(title: 'Faktor Penyesuaian Ukuran Kota (FVUK)')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
