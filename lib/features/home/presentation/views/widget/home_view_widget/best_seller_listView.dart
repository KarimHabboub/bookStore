import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/cubits/newest_books_cubit/cubit.dart';
import 'package:bookly/features/home/presentation/cubits/newest_books_cubit/states.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/best_seller_listView_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
      builder: (BuildContext context, state) {
        if(state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BookListViewItem( newestItem: state.books[index], theSameItems: state.books,),
          ),
          itemCount: state.books.length,
        );
        }else if (state is NewestBooksFailure){
          return CustomErrorWidget(errorMsg: state.errMessage);
        }else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
