part of 'pages.dart';

class PenghitungKendaraanPage extends StatelessWidget {
  const PenghitungKendaraanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        children: [
          Text(
            'Penghitung Kendaraan',
            style: greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          ),
          SizedBox(
            height: 16,
          ),
          mainContainer(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Volume (Q)',
            style: greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: greenColor),
            ),
            child: Wrap(
              children: [
                volumeTable(),
                volumeTable(),
                volumeTable(),
                volumeTable(),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: greenColor),
      ),
      child: Wrap(
        children: [
          ContainerKendaraan(title: 'KB', color: Colors.red),
          ContainerKendaraan(title: 'KR', color: blueColor),
          ContainerKendaraan(title: 'SM', color: orangeColor),
          ContainerKendaraan(title: 'KTB', color: Colors.pink),
          Divider(),
          SelectedItem(),
          buttonResult()
        ],
      ),
    );
  }

  Widget buttonResult(){
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.all(4),
            width: 240,
            height: 40,
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Text('+', style: whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }


  Widget volumeTable(){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14)
        ),
        child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                  children :[
                  Text('', textAlign: TextAlign.center,),
                  Text('', textAlign: TextAlign.center),
              ]),
              TableRow(
                  children :[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Q'),
                          Text('SMP')
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                          color: greyColor,
                          child: Text('Edit', textAlign: TextAlign.center,)
                      ),
                    ),
              ]),
            ]
        ),
      ),
    );
  }
}

class SelectedItem extends StatefulWidget {
  const SelectedItem({super.key});

  @override
  State<SelectedItem> createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  int selectedItem = -1;

  void handleSelection(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Kiri',
                style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              ButtonChoosing(
                isSelected: selectedItem == 0, // Treat TirtaPay as the 3rd option
                onTap: () => handleSelection(0),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Kanan',
                style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              ButtonChoosing(
                isSelected: selectedItem == 1, // Treat TirtaPay as the 3rd option
                onTap: () => handleSelection(1),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonChoosing extends StatefulWidget {
  final VoidCallback? onTap;
  bool isSelected;
  ButtonChoosing({
    super.key,
    this.onTap,
    required this.isSelected,
  });

  @override
  State<ButtonChoosing> createState() => _ButtonChoosingState();
}

class _ButtonChoosingState extends State<ButtonChoosing> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 160,
        height: 30,
        decoration: BoxDecoration(
          color: greyColor,
          border: widget.isSelected ? Border.all(color: greenColor, width: 4) : null,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class ContainerKendaraan extends StatefulWidget {
  final String title;
  final Color color;

  const ContainerKendaraan({Key? key, required this.title, required this.color});

  @override
  _ContainerKendaraanState createState() => _ContainerKendaraanState();
}

class _ContainerKendaraanState extends State<ContainerKendaraan> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            width: 160,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                Text(
                  widget.title,
                  style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.fire_truck_rounded, size: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextField(
                        readOnly: true,
                        controller: TextEditingController(text: counter.toString()),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    GestureDetector(
                      onTap: () {
                        incrementCounter();
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(Icons.add, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            resetCounter();
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text('Reset', style: TextStyle(color: Colors.white),),
          ),
        ),
      ],
    );
  }
}
