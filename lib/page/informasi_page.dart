part of 'pages.dart';

class InformasiPage extends StatelessWidget {
  const InformasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('KECEPATAN RATA RATA', style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),),
      ),
    );
  }
}
