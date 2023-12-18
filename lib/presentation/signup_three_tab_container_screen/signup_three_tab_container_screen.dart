import 'package:flutter/material.dart';
import 'package:sahellyprototype/core/app_export.dart';
import 'package:sahellyprototype/presentation/signup_three_page/signup_three_page.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahellyprototype/widgets/app_bar/custom_app_bar.dart';

class SignupThreeTabContainerScreen extends StatefulWidget {
  const SignupThreeTabContainerScreen({Key? key}) : super(key: key);

  @override
  SignupThreeTabContainerScreenState createState() =>
      SignupThreeTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SignupThreeTabContainerScreenState
    extends State<SignupThreeTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Column(children: [
                      _buildTabview(context),
                      SizedBox(
                          height: 851.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [SignupThreePage(), SignupThreePage()]))
                    ])))));
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
        centerTitle: true,
        title: AppbarSubtitle(text: "Sign Up"));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
        height: 37.v,
        width: 350.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
            unselectedLabelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
            indicator: BoxDecoration(
                color: appTheme.indigoA400,
                borderRadius: BorderRadius.circular(10.h)),
            tabs: [Tab(child: Text("Customer")), Tab(child: Text("Worker"))]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
