import '../iphone_13_mini_five_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sahellyprototype/core/app_export.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_title.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sahellyprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:sahellyprototype/widgets/custom_icon_button.dart';

class Iphone13MiniFiveScreen extends StatelessWidget {
  const Iphone13MiniFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "Welcome Back, Youssef",
                  style: CustomTextStyles.headlineSmallInterPrimary,
                ),
              ),
              SizedBox(height: 7.v),
              _buildWelcomeBackYoussef(context),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering To",
                      style: CustomTextStyles.headlineSmallInterOnPrimary,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMdiLocation,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "The 5th Settlement, New Cairo",
                  style: CustomTextStyles.titleMediumInterGray600,
                ),
              ),
              SizedBox(height: 27.v),
              _buildServices(context),
              SizedBox(height: 31.v),
              _buildUserProfile(context),
              SizedBox(height: 69.v),
              _buildHeaderButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Sahely ",
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCarbonNotificationFilled,
          margin: EdgeInsets.fromLTRB(20.h, 8.v, 20.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWelcomeBackYoussef(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 85.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.fillOnError.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Current balance",
              style: CustomTextStyles.titleMediumInterPrimarySemiBold,
            ),
            SizedBox(height: 9.v),
            Text(
              "320.00 EGP",
              style: CustomTextStyles.titleMediumInterPrimary,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildServices(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Services",
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.h),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSubwayPower,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "Electrician",
                          style: CustomTextStyles.labelLargeInterPrimary,
                        ),
                        SizedBox(height: 16.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIonHammerSharp,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 41.h,
                          child: Text(
                            "Wood Worker",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeInterPrimary,
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMdiBroom,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        SizedBox(height: 6.v),
                        SizedBox(
                          width: 41.h,
                          child: Text(
                            "Maid Worker",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeInterPrimary,
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFa6SolidBrush,
                          height: 32.v,
                          width: 24.h,
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 40.h,
                          child: Text(
                            "House Painter",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeInterPrimary,
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "Order History",
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              height: 135.v,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 10.h,
                  );
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderButtons(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          right: 11.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.fillWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgHome,
              ),
            ),
            Spacer(
              flex: 46,
            ),
            CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCalendar,
              ),
            ),
            Spacer(
              flex: 53,
            ),
            CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
