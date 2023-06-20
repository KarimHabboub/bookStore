
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/rate_book.dart';
import 'package:bookly/core/utils/constant.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../book_details_view.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    Key? key,
    required this.newestItem,
    this.theSameItems,
  }) : super(key: key);

  final Items newestItem;
  final List<Items>? theSameItems;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetailsView(
                bookData: newestItem,
                theSameItems: theSameItems!,
              ),
            ));
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
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      newestItem.volumeInfo?.imageLinks?.smallThumbnail ?? ""),
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
                    newestItem.volumeInfo!.title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      newestItem.volumeInfo?.authors?.first != null
                          ? newestItem.volumeInfo!.authors!.first
                          : '',
                      //newestItem.volumeInfo!.authors!.first,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      RateBook(
                        countRate: newestItem.volumeInfo?.ratingsCount != null
                            ? newestItem.volumeInfo!.ratingsCount!
                            : 0,
                        rate: newestItem.volumeInfo?.averageRating != null
                            ? newestItem.volumeInfo!.averageRating!
                            : 0.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
