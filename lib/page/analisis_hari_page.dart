part of 'pages.dart';

class AnalisisHariPage extends StatelessWidget {
  const AnalisisHariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      children: [
        analisisContainer('Hari Pertama'),
        analisisContainer('Hari Kedua'),
        analisisContainer('Hari Ketiga')
      ],
    );
  }

  Widget analisisContainer (String day, ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(day, style: greenTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: greenColor),
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
                    child:Text('0', textAlign: TextAlign.center,),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                        children :[
                          Text('NO', textAlign: TextAlign.center,),
                          Text('Volume (Q)', textAlign: TextAlign.center),
                          Text('DJ (Q/C)', textAlign: TextAlign.center,),
                          Text('Tingkat Pelayanan', textAlign: TextAlign.center),
                        ]),
                    TableRow(
                        children :[
                          Text('1', textAlign: TextAlign.center,),
                          Text('0', textAlign: TextAlign.center,),
                          Text('', textAlign: TextAlign.center,),
                          Text('', textAlign: TextAlign.center),
                        ]),
                    TableRow(
                        children :[
                          Text('2', textAlign: TextAlign.center,),
                          Text('0', textAlign: TextAlign.center,),
                          Text('', textAlign: TextAlign.center,),
                          Text('', textAlign: TextAlign.center),
                        ]),
                    TableRow(
                        children :[
                          Text('3', textAlign: TextAlign.center,),
                          Text('0', textAlign: TextAlign.center,),
                          Text('', textAlign: TextAlign.center,),
                          Text('', textAlign: TextAlign.center),
                        ]),
                  ]
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
                    child:Text('0', textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}
