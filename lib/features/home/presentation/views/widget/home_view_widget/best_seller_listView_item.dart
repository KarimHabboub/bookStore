import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/rate_book.dart';
import 'package:bookly/shared/components/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 105,
            width: 70,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://img.freepik.com/free-photo/vertical-shot-hot-coffee-with-waffles_181624-43126.jpg?w=360&t=st=1683822742~exp=1683823342~hmac=2c408b7a9baa8ef544e1574091639898d3ec1c46d61b9841a76585a88a8cd176',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      "J.K. Rowling",
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                  ),
                  const RateBook(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
