import 'package:booking_app/config/config.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            text: "Forgot password ",
            style: AppFont.paragraphSmall.copyWith(
              color: AppColor.ink02,
            ),
            children: [
              TextSpan(
                text: "Get new",
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            text: "Do you have an account? ",
            style: AppFont.paragraphSmall.copyWith(
              color: AppColor.ink02,
            ),
            children: [
              TextSpan(
                text: "Create new",
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
