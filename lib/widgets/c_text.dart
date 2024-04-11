import 'package:flutter/widgets.dart';

class Ctext extends StatelessWidget {
  const Ctext({
    super.key,
    required this.text,
    required this.textcolor,
    required this.fontWeight,
  });
  final String text;
  final Color textcolor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Evolventa",
        fontWeight: fontWeight,
        fontSize: 14,
      ),
    );
  }
}
