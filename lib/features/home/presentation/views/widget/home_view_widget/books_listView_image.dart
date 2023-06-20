import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/cubits/featured_books_cubit/cubit.dart';
import 'package:bookly/features/home/presentation/cubits/featured_books_cubit/states.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListViewImage extends StatelessWidget {
  const BooksListViewImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CustomBookImage(aspectRatio: 2.6 / 4, imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,),
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errorMsg: state.error,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
