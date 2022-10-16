import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;
  final Color indicatColor;
  final double datavalue;
  final String textValue;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    required this.indicatColor,
    required this.datavalue,
    required this.textValue,
    this.size = 10,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: isSquare ? BoxShape.circle : BoxShape.circle,
                    color: color,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ],
            ),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 240,
              animation: true,
              lineHeight: 6.0,
              animationDuration: 2000,
              percent: datavalue,
              barRadius: const Radius.circular(16),
              progressColor: indicatColor,
              backgroundColor: Colors.grey[300],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 5.0),
          child: Text(
            textValue,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff22215B).withOpacity(0.6),
            ),
          ),
        )
      ],
    );
  }
}
