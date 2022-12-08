import 'package:booking_app/features/presentation/pages/welcome/login/components/login_footer.dart';
import 'package:booking_app/features/presentation/pages/welcome/login/components/login_form.dart';
import 'package:booking_app/features/presentation/pages/welcome/login/components/login_image.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              16.0.height,
              const LoginImage(),
              48.0.height,
              const LoginForm(),
              16.0.height,
              const LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
