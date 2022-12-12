import 'controller/onboarding_controller.dart';
import 'package:anton_s_application1/core/app_export.dart';
import 'package:anton_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 36, top: 110, right: 36),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(80.00),
                              width: getSize(80.00))),
                      Container(
                          width: getHorizontalSize(226.00),
                          margin: getMargin(left: 36, top: 141, right: 36),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_online_digita2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(30),
                                        fontFamily: 'Overpass',
                                        fontWeight: FontWeight.w400,
                                        height: 1.90)),
                                TextSpan(
                                    text: "lbl_banking".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(60),
                                        fontFamily: 'Overpass',
                                        fontWeight: FontWeight.w800,
                                        height: 0.95))
                              ]),
                              textAlign: TextAlign.center)),
                      Container(
                          width: getHorizontalSize(292.00),
                          margin: getMargin(left: 36, top: 23, right: 36),
                          child: Text("msg_we_help_our_use".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtOverpassRegular16
                                  .copyWith(height: 1.88))),
                      CustomButton(
                          width: 342,
                          text: "lbl_start_now".tr.toUpperCase(),
                          margin: getMargin(
                              left: 36, top: 31, right: 36, bottom: 20))
                    ])))));
  }
}
