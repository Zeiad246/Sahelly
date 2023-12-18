import 'package:flutter/material.dart';
import 'package:sahellyprototype/core/app_export.dart';
import 'package:sahellyprototype/widgets/custom_drop_down.dart';
import 'package:sahellyprototype/widgets/custom_elevated_button.dart';
import 'package:sahellyprototype/widgets/custom_text_form_field.dart';

class SignupTwoPage extends StatefulWidget {
  const SignupTwoPage({Key? key}) : super(key: key);

  @override
  SignupTwoPageState createState() => SignupTwoPageState();
}

// ignore_for_file: must_be_immutable
class SignupTwoPageState extends State<SignupTwoPage>
    with AutomaticKeepAliveClientMixin<SignupTwoPage> {
  TextEditingController userDetailsController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                        _buildUserDetails(context),
                        SizedBox(height: 47.v),
                        _buildPhoneNumber(context),
                        SizedBox(height: 47.v),
                        _buildEmail(context),
                        SizedBox(height: 47.v),
                        _buildPassword(context),
                        SizedBox(height: 47.v),
                        CustomDropDown(
                            icon: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 11.v, 26.h, 11.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgLightbulb,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            hintText: "work field",
                            items: dropdownItemList,
                            onChanged: (value) {}),
                        SizedBox(height: 58.v),
                        _buildNextButton(context),
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
                        SizedBox(height: 98.v),
                        _buildConnectWithFacebookButton(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildUserDetails(BuildContext context) {
    return CustomTextFormField(
        controller: userDetailsController,
        hintText: "Username",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconamoonprofilelight,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController,
        hintText: "Enter Phone Number",
        textInputType: TextInputType.phone,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(26.h, 12.v, 22.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMicall,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Enter Email ID",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMdiemailoutline,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 46.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Enter Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Next",
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.titleMedium_1,
        onPressed: () {
          onTapNextButton(context);
        });
  }

  /// Section Widget
  Widget _buildConnectWithFacebookButton(BuildContext context) {
    return CustomElevatedButton(
        width: 225.h,
        text: "Connect with Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Navigates to the loginActiveScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginActiveScreen);
  }

  /// Navigates to the loginActiveScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginActiveScreen);
  }
}
