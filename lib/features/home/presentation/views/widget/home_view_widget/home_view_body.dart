import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/best_seller_listView.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/books_listView_image.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            BooksListViewImage(),
            Padding(
              padding: EdgeInsets.only(
                top: 49.0,
                bottom: 20,
              ),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListView(),
            ),
          ],
        ),
      ),

    );
  }
}

