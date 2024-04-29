part of 'widgets.dart';

class ContainerKendaraan extends StatelessWidget {
  final String title;
  final Color color;

  const ContainerKendaraan({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric( vertical: 16),
        width: 160,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text(title, style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
            Icon(Icons.fire_truck_rounded, size: 60,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: whiteColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: whiteColor, width: 2)
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(14)
                  ),
                  child: Icon(Icons.warning, color: whiteColor,),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
