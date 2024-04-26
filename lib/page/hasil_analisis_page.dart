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
    );
  }
}
