import 'package:bloc/bloc.dart';

import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    print("check");
    if (state.currentIndex < state.onboardingList.length - 1) {
      emit(state.clone()..currentIndex = state.currentIndex + 1);
    }
  }

  void prev() {
    if (state.currentIndex > 0) {
      emit(state.clone()..currentIndex = state.currentIndex - 1);
    }
  }

  void goTo(int index) {
    if (index >= 0 && index < state.onboardingList.length) {
      emit(state.clone()..currentIndex = index);
    }
  }
}
