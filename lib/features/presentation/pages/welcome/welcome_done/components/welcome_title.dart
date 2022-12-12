import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Column(
        children: [
          Text(
            "Find Your Roomie",
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.paragraphSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
