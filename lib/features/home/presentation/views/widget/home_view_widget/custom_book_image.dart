import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/cubits/featured_books_cubit/cubit.dart';
import 'package:bookly/features/home/presentation/cubits/featured_books_cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBookImage extends StatelessWidget {
    const CustomBookImage({
    Key? key,
    required this.aspectRatio,
  }) : super(key: key);

  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(

      builder: (BuildContext context, state) {
        if(state is FeaturedBooksSuccess) {
          return AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/vertical-shot-hot-coffee-with-waffles_181624-43126.jpg?w=360&t=st=1683822742~exp=1683823342~hmac=2c408b7a9baa8ef544e1574091639898d3ec1c46d61b9841a76585a88a8cd176'
                ),
              ),
            ),
          ),
        );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMsg: state.error,);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },

    );
  }
}

