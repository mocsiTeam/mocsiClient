import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:mocsi_client/presentation/core/colors.dart';
import 'package:mocsi_client/presentation/sign_in/widgets/sign_in_form.dart';

import '../injection.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [secondaryDarkColor, secondaryColor],
          ),
        ),
        child: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: SignInForm(),
        ),
      ),
    );
  }
}
