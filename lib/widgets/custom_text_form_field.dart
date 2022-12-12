import 'package:anton_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.OverpassRegular18:
        return TextStyle(
          color: ColorConstant.gray700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.OverpassRegular14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.OverpassSemiBold17:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.OverpassSemiBold16:
        return TextStyle(
          color: ColorConstant.teal300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray400:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBluegray60014:
        return OutlineInputBorder(
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineWhiteA700:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
      default:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBluegray60014:
        return ColorConstant.gray900;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray4001_2:
        return false;
      case TextFormFieldVariant.OutlineGray400:
        return false;
      case TextFormFieldVariant.OutlineBluegray60014:
        return true;
      case TextFormFieldVariant.UnderLineWhiteA700:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingTB28:
        return getPadding(
          left: 25,
          top: 25,
          right: 25,
          bottom: 28,
        );
      case TextFormFieldPadding.PaddingT20:
        return getPadding(
          left: 16,
          top: 20,
          right: 16,
          bottom: 16,
        );
      case TextFormFieldPadding.PaddingTB15:
        return getPadding(
          left: 11,
          top: 11,
          right: 11,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingB16:
        return getPadding(
          bottom: 16,
        );
      default:
        return getPadding(
          all: 24,
        );
    }
  }
}

enum TextFormFieldPadding {
  PaddingAll24,
  PaddingTB28,
  PaddingT20,
  PaddingTB15,
  PaddingB16,
}

enum TextFormFieldVariant {
  OutlineGray4001_2,
  OutlineGray400,
  OutlineBluegray60014,
  UnderLineWhiteA700,
}

enum TextFormFieldFontStyle {
  OverpassRegular17,
  OverpassRegular18,
  OverpassRegular14,
  OverpassSemiBold17,
  OverpassSemiBold16,
}
