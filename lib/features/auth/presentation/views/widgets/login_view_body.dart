import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:says_app/features/auth/presentation/views/widgets/name_text_field.dart';
import 'package:says_app/features/auth/presentation/views/widgets/password_text_field.dart';
import 'package:says_app/features/auth/presentation/views/widgets/row_create_acc.dart';
import 'package:says_app/features/auth/presentation/views/widgets/row_icons.dart';
import 'package:says_app/features/auth/presentation/views/widgets/welcome_text.dart';
import '../../../../../core/utils/styles.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.5),
          child: Column(
            children: [
              const WelcomeText(text: 'مرحبا بك'),
              const SizedBox(
                height: 10.0,
              ),
              EmailTextField(emailController: emailController),
              PasswordTextField(passwordController: passwordController),
              const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'هل نسيت كلمة السر؟',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: kYellowColor),
                  )),
              const SizedBox(height: 20.0,),
              CustomButton(text: 'تسجيل الدخول',onPressed: (){}),
              const SizedBox(height: 26.0,),
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.black,)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('أو تواصل مع'),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
              const SizedBox(height: 25.5,),
              const RowIcons(),
              const SizedBox(height: 22.0,),
              const RowCreateOrLoginAccount(text1: 'ليس لديك حساب؟',text2: 'انشاء حساب '),
            ],
          ),
        ),
      ),
    );
  }
}
