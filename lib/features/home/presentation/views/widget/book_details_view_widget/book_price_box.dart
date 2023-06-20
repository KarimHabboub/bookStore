import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookPriceBox extends StatelessWidget {
  const BookPriceBox({
    Key? key,
    required this.bookData,

  }) : super(key: key);

  final Items bookData;

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
            onPressed: () async{
              Uri url = Uri.parse(bookData.volumeInfo!.previewLink!);
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
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