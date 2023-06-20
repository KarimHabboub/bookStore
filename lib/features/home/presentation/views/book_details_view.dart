import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_view_widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key, required this.bookData, required this.theSameItems}) : super(key: key);

  final Items bookData;
  final List<Items> theSameItems;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailsViewBody(bookData: bookData, theSameItems: theSameItems,),
    );
  }
}
