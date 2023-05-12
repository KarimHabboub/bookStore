import 'package:bookly/features/home/presentation/views/widget/home_view_widget/books_listView.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BooksListView(),
    );
  }
}
