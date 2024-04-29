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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: greenColor)
            ),
            child: Column(
              children: [
                lineChart()
              ],
            ),
          ),


          SizedBox(height: 16,),


          Text('Grafik Kecepatan Rata Rata', style: greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: greenColor)
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
                            Text('NO', textAlign: TextAlign.center,),
                            Text('DJ (Q/J)', textAlign: TextAlign.center),
                            Text('Tingkat Pelayanan', textAlign: TextAlign.center,),
                            Text('Kecepatan Rata (VT)', textAlign: TextAlign.center),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget lineChart(){
    return AspectRatio(
        aspectRatio: 1,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6,  2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              isCurved: true,

              dotData: FlDotData(show: true),
              color: greenColor,
              barWidth: 5,

              belowBarData: BarAreaData(
                show: true,
                color: greenColor.withOpacity(0.7)
              ),
            ),
          ],
        ),
      ),
    );
  }
}


