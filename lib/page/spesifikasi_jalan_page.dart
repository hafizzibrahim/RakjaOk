part of 'pages.dart';

class SpesifikasiJalanPage extends StatelessWidget {
  const SpesifikasiJalanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Spesifikasi Jalan', style: greenTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
          SizedBox(height: 16,),
          mainContainer()
        ],
      ),
    );
  }

  Widget mainContainer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: greenColor),
      ),
      child: Column(
        children: [
          MyTextWidget(title: 'Tipe Jalan',),
          MyTextWidget(title: 'Lebar Jalur'),
          MyTextWidget(title: 'Pemisah Arah'),
          MyTextWidget(title: 'Kelas Hambatan Samping'),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kapasitas Hambatan Samping', style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),),
                SizedBox(height: 8,),
                Row(
                  children: [
                    rowTextField(100),
                    SizedBox(width: 16,),
                    Text('Lebar', style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),),
                    SizedBox(width: 10,),
                    rowTextField(150)
                  ],
                ),
              ],
            ),
          ),
          MyTextWidget(title: 'Jumlah Penduduk')
        ],
      ),
    );
  }

  Widget rowTextField(double width){
    return Container(
      width: width,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14)
          ),
        ),
      ),
    );
  }
}


