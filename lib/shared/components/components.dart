

import 'package:bookly/shared/components/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void navigateTo({required Widget screen,}) {
    Get.to(
          () => screen,
      transition: Transition.fade,
      duration: kTransitionDuration,
    );

}