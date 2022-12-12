import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/features/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: PrimaryButton(
        text: "Let's go",
        onPressed: () {},
        width: double.infinity,
      ),
    );
  }
}
