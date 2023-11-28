import 'package:e_commerce_assignment/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/color.dart';
import '../../../components/form_error.dart';
import '../../../utils/helper/keyboard.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: emailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: invalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: emailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: invalidEmailError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20, top: 14, bottom: 14),
                child: Icon(
                  Icons.email_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              enabledBorder:  OutlineInputBorder(
                gapPadding: 10,
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.outlineInputEnableBorderColor,
                  width: 1.5,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 25,
              ),
              border: OutlineInputBorder(
                gapPadding: 10,
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.outlineInputBorderColor,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
              labelStyle: TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          SizedBox(height: Get.height * .02),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: passNullError);
              } else if (value.length >= 8) {
                removeError(error: shortPassError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: passNullError);
                return "";
              } else if (value.length < 8) {
                addError(error: shortPassError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon:const Padding(
                padding:  EdgeInsets.only(right: 20, top: 14, bottom: 14),
                child: Icon(Icons.lock_outline),
              ),
              enabledBorder: OutlineInputBorder(
                gapPadding: 10,
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.outlineInputEnableBorderColor,
                  width: 1.5,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 25,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
              border: OutlineInputBorder(
                gapPadding: 10,
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.outlineInputBorderColor,
                  width: 1.5,
                ),
              ),
              labelStyle: TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          SizedBox(height: Get.height * .02),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: AppColors.primaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: Get.height * .016),
          Container(
            height: Get.height *.07,
            width: Get.width * .9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.primaryColor,
            ),
            child: MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  KeyboardUtil.hideKeyboard(context);
                }
              },
              child: Text("Continue",
                  style: TextStyle(color: AppColors.whiteColor)),
            ),
          ),
        ],
      ),
    );
  }
}
