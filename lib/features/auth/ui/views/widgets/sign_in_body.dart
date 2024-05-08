import 'package:flutter/material.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/guest_click.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_form.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_header.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_up_click.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 80),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignHeaderWidget(
              header: 'Sign In',
              subHeader: 'Welcome back, you\'ve been missed!',
            ),
            SizedBox(height: 60),
            SignInForm(),
            SizedBox(height: 46),
            Column(
              children: [
                GuestClick(),
                SignUpClick(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
