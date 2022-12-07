import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/features/presentation/widgets/primary_button.dart';
import 'package:booking_app/features/presentation/widgets/secondary_button.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              onPressed: () {},
              text: "Explore",
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: () {},
              text: "Log in",
            ),
          ),
        ],
      ),
    );
  }
}
