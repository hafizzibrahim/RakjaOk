part of 'widgets.dart';

class MyTextWidget extends StatelessWidget {
  final String title;
  const MyTextWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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