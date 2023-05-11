import 'package:bookly/features/home/presentation/views/widget/custom_lisView_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: CustomListViewItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}
