part of 'pages.dart';

class InformasiPage extends StatelessWidget {
  const InformasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('INFORMASI', style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          Text('Tentang Aplikasi', style: greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: greenColor),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: greenColor,
                  ),
                  child: Text('Unduh Buku Panduan Penggunaan', style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),textAlign: TextAlign.center,),
                ),
                SizedBox(height: 16,),
                Text('Aplikasi ini digunakan untuk melakukan Analisis Kinerja '
                    'Ruas Jalan dengan mudah dan Otomatis tanpa dengan berpedoman '
                    'pada PKJI 2014, didesain dengan tampilan yang ramah dan mudah '
                    'digunakan untu pengguna', style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 14), textAlign: TextAlign.justify,),
                SizedBox(height: 16,),
              ],
            ),
          ),
          SizedBox(height: 24,),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: greenColor,
            ),
            child: Column(
              children: [
                Text('Buka Semua fitur pada aplikasi RAKJa dengan beli paket PREMIUM di Bawah', style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),textAlign: TextAlign.center,),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.yellowAccent,
                  ),
                  child: Text('Beli Paket Premium', style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
