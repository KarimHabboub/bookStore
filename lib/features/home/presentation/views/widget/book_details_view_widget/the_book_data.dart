import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_view_widget/book_price_box.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/custom_book_image.dart';
import 'package:bookly/core/widget/rate_book.dart';
import 'package:flutter/material.dart';


class TheBookData extends StatelessWidget {
  const TheBookData({
    Key? key,
    required this.bookData,
  }) : super(key: key);

  final Items bookData;

  @override
  Widget build(BuildContext context) {

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 36),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: CustomBookImage(
                          aspectRatio: 2.9 / 4,
                          imageUrl:
                              bookData.volumeInfo!.imageLinks!.thumbnail!,
                        )),
                    const SizedBox(height: 43),
                    Text(
                      bookData.volumeInfo!.title!,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle30,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      bookData.volumeInfo?.authors?.first ?? "",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 14),
                  ],
                ),
              ),
              RateBook(
                countRate: bookData.volumeInfo?.ratingsCount !=null? bookData.volumeInfo!.ratingsCount! : 0,
                rate: bookData.volumeInfo?.averageRating !=null? bookData.volumeInfo!.averageRating! : 0.0,
              ),
              const SizedBox(height: 37),
              BookPriceBox(bookData: bookData),
              const SizedBox(height: 49),
              Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        }
  }

