import 'package:flutter/material.dart';
import 'package:sahellyprototype/core/app_export.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahellyprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:sahellyprototype/widgets/custom_checkbox_button.dart';
import 'package:sahellyprototype/widgets/custom_elevated_button.dart';
import 'package:sahellyprototype/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginActiveScreen extends StatelessWidget {
  LoginActiveScreen({Key? key}) : super(key: key);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 66.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.h, right: 15.h, bottom: 5.v),
                        child: Column(children: [
                          _buildEmailEditText(context),
                          SizedBox(height: 17.v),
                          _buildPasswordEditText(context),
                          SizedBox(height: 33.v),
                          _buildLoginRow(context),
                          SizedBox(height: 99.v),
                          _buildLoginButton(context),
                          SizedBox(height: 35.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("New User ?",
                                        style: theme.textTheme.bodySmall)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignup(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("Signup",
                                            style: CustomTextStyles
                                                .labelLargeIndigoA400)))
                              ]),
                          SizedBox(height: 51.v),
                          _buildOrRow(context),
                          SizedBox(height: 117.v),
                          _buildConnectWithFacebookButton(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Login", margin: EdgeInsets.only(left: 100.h)));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController,
        hintText: "Email address",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: passwordEditTextController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 11.v, 18.h, 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSolareyebold,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 46.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v));
  }

  /// Section Widget
  Widget _buildLoginRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: CustomCheckboxButton(
                          text: "Remember me",
                          value: rememberMe,
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          onChange: (value) {
                            rememberMe = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 9.v),
                      child: Text("Forget Password?",
                          style: CustomTextStyles.labelLargePrimary))
                ])));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Login",
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.titleMedium_1,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildOrRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 3.v),
              child: SizedBox(width: 108.h, child: Divider())),
          Text("Or", style: theme.textTheme.bodySmall),
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 3.v),
              child: SizedBox(width: 108.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildConnectWithFacebookButton(BuildContext context) {
    return CustomElevatedButton(
        width: 225.h,
        text: "Connect with Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 11.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone13MiniFiveScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone13MiniFiveScreen);
  }

  /// Navigates to the signupOneTabContainerScreen when the action is triggered.
  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupOneTabContainerScreen);
  }
}
