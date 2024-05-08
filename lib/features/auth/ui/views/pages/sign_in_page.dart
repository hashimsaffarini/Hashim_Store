import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/services/auth_services.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/auth/ui/logic/auth/auth_cubit.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthFailure) {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.error,
                  animType: AnimType.bottomSlide,
                  title: 'Error',
                  desc: state.error,
                  btnCancelOnPress: () {},
                  btnCancelText: 'Cancel',
                  btnOkOnPress: () {},
                  btnOkText: 'Ok',
                ).show();
              } else if (state is AuthSuccess) {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.bottomSlide,
                  title: 'Success',
                  desc: 'You have successfully signed in',
                  btnOkOnPress: () {
                    log(AuthServicesImpl().currentUser().toString());
                    log(AuthServicesImpl().getName().toString());
                    GoRouter.of(context).push(AppRouter.navBar);
                  },
                ).show();
              }
            },
            child: const SignInBody(),
          ),
        ),
      ),
    );
  }
}
