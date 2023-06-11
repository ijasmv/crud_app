import 'package:crud_app/application/auth/auth_bloc.dart';
import 'package:crud_app/application/core/ui_constants.dart';
import 'package:crud_app/domain/auth/status/auth_status.dart';
import 'package:crud_app/presentation/tweet/tweet_screen.dart';
import 'package:crud_app/presentation/widgets/custom_textfield.dart';
import 'package:crud_app/presentation/widgets/submit_btn.dart';
import 'package:crud_app/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController emailCntl = TextEditingController();
  final TextEditingController passwordCntl = TextEditingController();
  final TextEditingController confrmPasswordCntl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authStatus == const AuthStatus.registered()) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (ctx) => const TweetScreen()));
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Registered Successfully")));
        } else if (state.authStatus == const AuthStatus.registerFailed()) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPageHPadding,
            vertical: kPageVPadding,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextField(
                  label: "Email",
                  controller: emailCntl,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    return value.isNotEmpty;
                  },
                ),
                CustomTextField(
                  label: "Password",
                  controller: passwordCntl,
                  obscureText: true,
                  validator: (value) {
                    return value.isNotEmpty;
                  },
                ),
                CustomTextField(
                  label: "Confirm Password",
                  controller: confrmPasswordCntl,
                  obscureText: true,
                  validator: (value) {
                    return passwordCntl.text == value;
                  },
                ),
                verticalSpace(15),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const CircularProgressIndicator();
                    } else {
                      return SubmitBtn(
                        label: "Register",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                Register(email: emailCntl.text, password: passwordCntl.text));
                          }
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
