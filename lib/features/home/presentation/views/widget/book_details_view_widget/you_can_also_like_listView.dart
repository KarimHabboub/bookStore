import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/book_model.dart';

class YouCanAlsoLikeListView extends StatelessWidget {
  const YouCanAlsoLikeListView({
    Key? key, required this.items, required this.theSameItems,
  }) : super(key: key);

  final Items items;
  final List<Items> theSameItems;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            child: CachedNetworkImage(
              imageUrl: theSameItems[index].volumeInfo?.imageLinks?.smallThumbnail ?? '',
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}