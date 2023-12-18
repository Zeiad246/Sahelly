import 'package:flutter/material.dart';
import 'package:sahellyprototype/core/app_export.dart';
import 'package:sahellyprototype/presentation/signup_one_page/signup_one_page.dart';
import 'package:sahellyprototype/presentation/signup_two_page/signup_two_page.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahellyprototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahellyprototype/widgets/app_bar/custom_app_bar.dart';

class SignupOneTabContainerScreen extends StatefulWidget {
  const SignupOneTabContainerScreen({Key? key}) : super(key: key);

  @override
  SignupOneTabContainerScreenState createState() =>
      SignupOneTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SignupOneTabContainerScreenState
    extends State<SignupOneTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(children: [
                      _buildTabview(context),
                      SizedBox(
                          height: 774.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                SignupOnePage(),
                                SignupOnePage(),
                                SignupTwoPage()
                              ]))
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
        width: 340.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
            tabs: [
              Tab(child: Text("Customer")),
              Tab(child: Text("Worker")),
              Tab(child: Text("Worker"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
