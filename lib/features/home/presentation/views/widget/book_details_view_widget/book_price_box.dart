import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BookPriceBox extends StatelessWidget {
  const BookPriceBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: '19.99€',
            textStyle: Styles.textStyle18.copyWith(
                color: Colors.black
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),


          ),
          CustomButton(
            text: 'Free preview',
            textStyle: Styles.textStyle16.copyWith(
                color: Colors.white
            ),
            backgroundColor: const Color(0xffEF8262),
            borderRadius:const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),


          ),

        ],
      ),
    );
  }
}