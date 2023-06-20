import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/cubits/featured_books_cubit/cubit.dart';
import 'package:bookly/features/home/presentation/cubits/featured_books_cubit/states.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
    required this.aspectRatio,
    required this.imageUrl,
  }) : super(key: key);

  final double aspectRatio;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: aspectRatio,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
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
