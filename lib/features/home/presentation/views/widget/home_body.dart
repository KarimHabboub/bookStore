import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/books_listView.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          BooksListView(),
          Padding(
            padding: EdgeInsets.only(
              top: 60.0,
              bottom: 20.0,
            ),
            child: Text(
              'Best Seller',
              style: Styles.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
