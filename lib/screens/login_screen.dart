import 'package:flutter/material.dart';
import 'package:tasky/core/utils/validator_app.dart';
import 'package:tasky/features/auth/widgets/state_user_auth.dart';
import 'package:tasky/features/auth/widgets/text_form_field_widget.dart';
import 'package:tasky/screens/register_screen.dart';
import 'package:tasky/features/auth/widgets/material_button_widget.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static const String routeName = "LoginScreen";
  
  var email = TextEditingController();
  var password = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 120),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff252525),
                  ),
                ),
                const Text(
                  "sign in to access your account",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff252525),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 80),
                const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff252525),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormFieldWidget(
                  controller: email,
                  hintText: "Enter your email",
                  validator: ValidatorApp.validateEmail,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff252525),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormFieldWidget(
                  controller: password,
                  hintText: "Enter your Password",
                  validator: ValidatorApp.validatePassword,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButtonWidget(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  
                }
              },
              label: "Login",
            ),
            const SizedBox(height: 14),
            StateUserAuth(
              onTap: () {
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              title: "New member ?",
              subTitle: 'Register now',
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}


