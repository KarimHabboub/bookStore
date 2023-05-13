import 'package:bookly/features/home/presentation/views/widget/book_details_view_widget/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_view_widget/the_book_data.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_view_widget/you_can_also_like_listView.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
          CustomBookDetailsAppBar(),
          TheBookData(),
          YouCanAlsoLikeListView(),
        ],
      ),
    );
  }
}










