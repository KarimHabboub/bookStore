import 'package:bookly/features/home/presentation/viewes/widget/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/viewes/widget/custom_lisView_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children:const [
           CustomAppBar(),
          BooksListView(),


        ],
      ),
    );
  }
}


