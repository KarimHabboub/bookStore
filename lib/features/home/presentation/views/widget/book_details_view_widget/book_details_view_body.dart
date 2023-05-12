import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_view_widget/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widget/home_view_widget/rate_book.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBookDetailsAppBar(),
          TheBookData(),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context , index) => Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 10,
                ),
                child: AspectRatio(
                  aspectRatio: 3/4,
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
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class TheBookData extends StatelessWidget {
  const TheBookData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 36),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
                child: const CustomBookImage()
              ),
              const SizedBox(height: 43),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(height: 4),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 14),
            ],
          ),
        ),
        const RateBook(),
        const SizedBox(height: 37),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 14, bottom: 10, right: 54, left: 45),
                    child: Text(
                      '19.99€',
                      style: Styles.textStyle18.copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    color: Color(0xffEF8262),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 13, bottom: 14, right: 28.5, left: 31.5),
                  child: Text('Free preview', style: Styles.textStyle16),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 49),
        const Text(
          'You can also like',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}


