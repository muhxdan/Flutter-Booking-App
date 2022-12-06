import 'package:booking_app/extension/extension.dart';
import 'package:booking_app/features/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/features/presentation/widgets/primary_button.dart';
import 'package:booking_app/features/presentation/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          onPressed: cubit.skip,
          text: "Skip",
          width: 147.5,
        ),
        16.0.width,
        PrimaryButton(
          onPressed: cubit.next,
          text: "Next",
          width: 147.5,
        ),
      ],
    );
  }
}
