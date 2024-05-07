import 'package:flutter/material.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_up_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: SignUpBody(),
        
      ),
    );
  }
}
