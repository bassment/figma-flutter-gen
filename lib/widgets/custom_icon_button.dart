import 'package:anton_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.padding,
      this.shape,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonPadding? padding;

  IconButtonShape? shape;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case IconButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case IconButtonPadding.PaddingAll29:
        return getPadding(
          all: 29,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillRed50:
        return ColorConstant.red50;
      case IconButtonVariant.FillTeal50:
        return ColorConstant.teal50;
      case IconButtonVariant.FillPurple50:
        return ColorConstant.purple50;
      case IconButtonVariant.FillRed51:
        return ColorConstant.red51;
      case IconButtonVariant.FillIndigo50:
        return ColorConstant.indigo50;
      case IconButtonVariant.FillLime50:
        return ColorConstant.lime50;
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case IconButtonVariant.OutlineBlack9003f:
        return ColorConstant.gray50;
      case IconButtonVariant.FillGray101:
        return ColorConstant.gray101;
      case IconButtonVariant.OutlineGray50:
        return ColorConstant.bluegray900;
      case IconButtonVariant.FillTeal300:
        return ColorConstant.teal300;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillYellowA400:
        return ColorConstant.yellowA400;
      case IconButtonVariant.FillPurpleA700:
        return ColorConstant.purpleA700;
      case IconButtonVariant.FillTealA400:
        return ColorConstant.tealA400;
      default:
        return ColorConstant.bluegray900;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray50:
        return Border.all(
          color: ColorConstant.gray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillBluegray900:
      case IconButtonVariant.FillRed50:
      case IconButtonVariant.FillTeal50:
      case IconButtonVariant.FillPurple50:
      case IconButtonVariant.FillRed51:
      case IconButtonVariant.FillIndigo50:
      case IconButtonVariant.FillLime50:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.OutlineBlack9003f:
      case IconButtonVariant.FillGray101:
      case IconButtonVariant.FillTeal300:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillYellowA400:
      case IconButtonVariant.FillPurpleA700:
      case IconButtonVariant.FillTealA400:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case IconButtonShape.CircleBorder40:
        return BorderRadius.circular(
          getHorizontalSize(
            40.00,
          ),
        );
      case IconButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case IconButtonVariant.FillBluegray900:
      case IconButtonVariant.FillRed50:
      case IconButtonVariant.FillTeal50:
      case IconButtonVariant.FillPurple50:
      case IconButtonVariant.FillRed51:
      case IconButtonVariant.FillIndigo50:
      case IconButtonVariant.FillLime50:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillGray101:
      case IconButtonVariant.OutlineGray50:
      case IconButtonVariant.FillTeal300:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillYellowA400:
      case IconButtonVariant.FillPurpleA700:
      case IconButtonVariant.FillTealA400:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonPadding {
  PaddingAll12,
  PaddingAll15,
  PaddingAll8,
  PaddingAll18,
  PaddingAll29,
}

enum IconButtonShape {
  CircleBorder15,
  CircleBorder12,
  CircleBorder40,
  CircleBorder20,
}

enum IconButtonVariant {
  FillBluegray900,
  FillRed50,
  FillTeal50,
  FillPurple50,
  FillRed51,
  FillIndigo50,
  FillLime50,
  FillGray50,
  OutlineBlack9003f,
  FillGray101,
  OutlineGray50,
  FillTeal300,
  FillWhiteA700,
  FillYellowA400,
  FillPurpleA700,
  FillTealA400,
}
