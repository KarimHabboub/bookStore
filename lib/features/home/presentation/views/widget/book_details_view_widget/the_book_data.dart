import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_view_widget/book_price_box.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/custom_book_image.dart';
import 'package:bookly/core/widget/rate_book.dart';
import 'package:flutter/material.dart';

class TheBookData extends StatelessWidget {
  const TheBookData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 36),
              SizedBox(
                  height: MediaQuery.of(context).size.height*0.3,
                  child: const CustomBookImage()
              ),
              const SizedBox(height: 43),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(height: 4),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 14),
            ],
          ),
        ),
        const RateBook(),
        const SizedBox(height: 37),
        const BookPriceBox(),
        const SizedBox(height: 49),
        const Text(
          'You can also like',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}