import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/features/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            cubit.state.onboardingList.length,
            (index) => index == cubit.state.currentIndex
                ? _activeIndicator()
                : _inActiveIndicator(),
          ),
        );
      },
    );
  }

  Widget _activeIndicator() {
    return Container(
      width: 16,
      height: 6,
      decoration: BoxDecoration(
        color: AppColor.accentPink,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _inActiveIndicator() {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: AppColor.ink03,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
