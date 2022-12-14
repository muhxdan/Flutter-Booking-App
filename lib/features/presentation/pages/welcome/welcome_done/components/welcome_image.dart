import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/features/data/src/img_string.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
        child: Image.asset(ImgString.backdrop),
      ),
    );
  }
}
