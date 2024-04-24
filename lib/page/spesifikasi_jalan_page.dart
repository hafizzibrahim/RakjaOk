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
          MyTextWidget(title: 'Kapasitas Hambatan Samping'),
        ],
      ),
    );
  }
}

class RowTextField extends StatelessWidget {
  final String title;
  const RowTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: greenColor, width: 2)
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

