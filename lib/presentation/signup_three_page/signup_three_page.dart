import 'package:flutter/material.dart';
import 'package:sahellyprototype/core/app_export.dart';
import 'package:sahellyprototype/widgets/custom_drop_down.dart';
import 'package:sahellyprototype/widgets/custom_elevated_button.dart';
import 'package:sahellyprototype/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupThreePage extends StatefulWidget {
  const SignupThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  SignupThreePageState createState() => SignupThreePageState();
}

class SignupThreePageState extends State<SignupThreePage>
    with AutomaticKeepAliveClientMixin<SignupThreePage> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
            child: Column(
              children: [
                SizedBox(height: 35.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildUserName(context),
                      SizedBox(height: 47.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 47.v),
                      _buildEmail(context),
                      SizedBox(height: 47.v),
                      _buildPassword(context),
                      SizedBox(height: 47.v),
                      CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 11.v, 26.h, 11.v),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgMaterialsymbolsarrowback,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        hintText: "work field",
                        items: dropdownItemList,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(24.h, 9.v, 14.h, 11.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgBriefcase,
                            height: 26.v,
                            width: 34.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 46.v,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.v),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 5.v),
                      _buildBriefcase(context),
                      SizedBox(height: 28.v),
                      _buildConnectWithFacebook(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "Username",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconamoonprofilelight,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
    );
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
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
    );
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
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Enter Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildBriefcase(BuildContext context) {
    return SizedBox(
      height: 266.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                top: 53.v,
                right: 2.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 150.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "Next",
                      style: CustomTextStyles.titleMedium_1,
                    ),
                  ),
                  SizedBox(height: 36.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have account ? ",
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "Login",
                          style: CustomTextStyles.labelLargeRedA400,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 66.v),
              child: Text(
                "Or",
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 70.v),
              child: SizedBox(
                width: 108.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 70.v),
              child: SizedBox(
                width: 108.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Connect with Google ",
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              padding: EdgeInsets.symmetric(
                horizontal: 87.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillOnError.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Select your Field",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "Electrician",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "Wood Worker",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "Maid Worker",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "House Painter",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 14.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConnectWithFacebook(BuildContext context) {
    return CustomElevatedButton(
      width: 225.h,
      text: "Connect with Facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }
}
