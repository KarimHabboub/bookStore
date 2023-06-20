import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RateBook extends StatelessWidget {
  const RateBook({
    Key? key, required this.rate, required this.countRate,
  }) : super(key: key);

  final num rate;
  final int countRate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: Icon(
            Icons.star,
            size: 18,
            color: Color(0xffFFDD4F),
          ),
        ),
         Text(
          '$rate',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 10),
        Text(
          "($countRate)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}