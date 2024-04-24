part of 'pages.dart';

class PenghitungKendaraanPage extends StatelessWidget {
  const PenghitungKendaraanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        children: [
          Text('Penghitung Kendaraan', style: greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
          SizedBox(height: 16,),
          mainContainer(),

        ],
      ),
    );
  }

  Widget mainContainer(){
    return Container(
      padding: EdgeInsets.symmetric( vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: greenColor),
      ),
      child: const Wrap(
        children: [
          ContainerKendaraan(),
          ContainerKendaraan(),
          ContainerKendaraan(),
          ContainerKendaraan(),
          Divider(),
          MyTextWidget(title: 'Jalur Kiri'),
          MyTextWidget(title: 'Jalur Kanan')
        ],
      ),
    );
  }
}
