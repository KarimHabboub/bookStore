import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RateBook extends StatelessWidget {
  const RateBook({
    Key? key,
  }) : super(key: key);

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
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 10),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}