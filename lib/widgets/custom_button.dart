import 'package:anton_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll26:
        return getPadding(
          all: 26,
        );
      default:
        return getPadding(
          all: 21,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray7007e:
        return ColorConstant.gray7007e;
      case ButtonVariant.OutlineGray400:
      case ButtonVariant.OutlineGray4001_2:
        return null;
      default:
        return ColorConstant.bluegray900;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray400:
        return Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray4001_2:
        return Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBluegray900:
      case ButtonVariant.FillGray7007e:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineGray4001_2:
        return [
          BoxShadow(
            color: ColorConstant.gray2003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              15,
              20,
            ),
          )
        ];
      case ButtonVariant.FillBluegray900:
      case ButtonVariant.OutlineGray400:
      case ButtonVariant.FillGray7007e:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.OverpassSemiBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OverpassRegular12:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.OverpassBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.OverpassRegular17:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll21,
  PaddingAll26,
}

enum ButtonVariant {
  FillBluegray900,
  OutlineGray400,
  FillGray7007e,
  OutlineGray4001_2,
}

enum ButtonFontStyle {
  OverpassBold16,
  OverpassSemiBold18,
  OverpassRegular12,
  OverpassBold20,
  OverpassRegular17,
}
