import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/icon_broken.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/best_seller_listView_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchAppBar(),
          SizedBox(height: 30),
          CustomTextFormField(),
          SizedBox(height: 25),
          Text('search result', style: Styles.textStyle18),
          SizedBox(height: 18),
          SearchListView(),
        ],
      ),
    );
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: BookListViewItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 22),
            child: Icon(
              IconBroken.Search,
              color: Colors.white,
            ),
          ),
          hintText: 'Search for the book you want'),
    );
  }
}

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.logo,
          height: 23,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
            size: 31,
          ),
        ),
      ],
    );
  }
}
