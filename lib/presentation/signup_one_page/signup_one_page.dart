import 'package:flutter/material.dart';
import 'package:sahellyprototype/core/app_export.dart';
import 'package:sahellyprototype/widgets/custom_elevated_button.dart';
import 'package:sahellyprototype/widgets/custom_text_form_field.dart';

class SignupOnePage extends StatefulWidget {
  const SignupOnePage({Key? key}) : super(key: key);

  @override
  SignupOnePageState createState() => SignupOnePageState();
}

// ignore_for_file: must_be_immutable
class SignupOnePageState extends State<SignupOnePage>
    with AutomaticKeepAliveClientMixin<SignupOnePage> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 48.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        _buildUserForm(context),
                        SizedBox(height: 51.v),
                        CustomElevatedButton(
                            height: 52.v,
                            text: "Next",
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle: CustomTextStyles.titleMedium_1,
                            onPressed: () {
                              onTapNext(context);
                            }),
                        SizedBox(height: 37.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?",
                                  style: theme.textTheme.bodySmall),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtLogIn(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 22.h),
                                      child: Text("Log In",
                                          style: CustomTextStyles
                                              .labelLargePrimaryBold)))
                            ]),
                        SizedBox(height: 21.v),
                        Text("Or", style: theme.textTheme.bodySmall),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(width: 108.h, child: Divider())),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(width: 108.h, child: Divider())),
                        SizedBox(height: 91.v),
                        CustomElevatedButton(
                            width: 225.h,
                            text: "Connect with Facebook",
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 12.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFacebook,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)))
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildUserForm(BuildContext context) {
    return Column(children: [
      CustomTextFormField(
          controller: userNameController,
          hintText: "Username",
          prefix: Container(
              margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconamoonprofilelight,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 46.v)),
      SizedBox(height: 47.v),
      CustomTextFormField(
          controller: phoneNumberController,
          hintText: "Enter Phone Number",
          textInputType: TextInputType.phone,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(26.h, 12.v, 22.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMicall,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 46.v)),
      SizedBox(height: 47.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "Enter Email ID",
          textInputType: TextInputType.emailAddress,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMdiemailoutline,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 46.v)),
      SizedBox(height: 47.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Enter Password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Navigates to the loginActiveScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginActiveScreen);
  }

  /// Navigates to the loginActiveScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginActiveScreen);
  }
}
