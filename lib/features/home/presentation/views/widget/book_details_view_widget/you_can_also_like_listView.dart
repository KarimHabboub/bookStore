import 'package:flutter/material.dart';

class YouCanAlsoLikeListView extends StatelessWidget {
  const YouCanAlsoLikeListView({
    Key? key,
  }) : super(key: key);

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
    );
  }
}