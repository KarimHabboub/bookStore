import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/icon_broken.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 23,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconBroken.Search,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
