import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/auth/ui/logic/auth/auth_cubit.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_up_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccess) {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.bottomSlide,
                  dismissOnTouchOutside: false,
                  title: 'Success',
                  desc: 'You have successfully signed up',
                  btnOkOnPress: () {
                    GoRouter.of(context).push(AppRouter.navBar);
                  },
                ).show();
              } else if (state is AuthFailure) {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.error,
                  animType: AnimType.bottomSlide,
                  title: 'Error',
                  desc: state.error.substring(11),
                  btnOkOnPress: () {},
                ).show();
              }
            },
            child: const SignUpBody(),
          ),
        ),
      ),
    );
  }
}
