import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  AlignmentGeometry? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
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
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT16:
        return getPadding(
          top: 16,
          right: 16,
          bottom: 16,
        );
      case ButtonPadding.PaddingT2:
        return getPadding(
          top: 2,
          right: 2,
          bottom: 2,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingT12:
        return getPadding(
          top: 12,
          right: 12,
          bottom: 12,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case ButtonPadding.PaddingT18:
        return getPadding(
          left: 12,
          top: 18,
          bottom: 18,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillIndigo500:
        return ColorConstant.indigo500;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray200_1:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGray200:
        return ColorConstant.gray200;
      case ButtonVariant.FillBlue50a2:
        return ColorConstant.blue50A2;
      case ButtonVariant.FillIndigoA400:
        return ColorConstant.indigoA400;
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.OutlineIndigoA400:
      case ButtonVariant.OutlineGray200:
      case ButtonVariant.OutlineGray300:
      case ButtonVariant.OutlineDeeporange800:
        return null;
      default:
        return ColorConstant.lightGreen400;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigoA400:
        return BorderSide(
          color: ColorConstant.indigoA400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray200:
        return BorderSide(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray200_1:
        return BorderSide(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray300:
        return BorderSide(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineDeeporange800:
        return BorderSide(
          color: ColorConstant.deepOrange800,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder9:
        return BorderRadius.circular(
          getHorizontalSize(
            9.00,
          ),
        );
      case ButtonShape.CircleBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.GeneralSansMedium939:
        return TextStyle(
          color: ColorConstant.blue100,
          fontSize: getFontSize(
            9.39,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium16IndigoA400:
        return TextStyle(
          color: ColorConstant.indigoA400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium12:
        return TextStyle(
          color: ColorConstant.blue100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium14:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium14IndigoA400:
        return TextStyle(
          color: ColorConstant.indigoA400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium14Bluegray500:
        return TextStyle(
          color: ColorConstant.blueGray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium14Red900:
        return TextStyle(
          color: ColorConstant.red900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium16Bluegray500:
        return TextStyle(
          color: ColorConstant.blueGray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansSemibold24:
        return TextStyle(
          color: ColorConstant.indigoA400,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.GeneralSansRegular14:
        return TextStyle(
          color: ColorConstant.blueGray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.GeneralSansMedium14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.GeneralSansMedium16Deeporange800:
        return TextStyle(
          color: ColorConstant.deepOrange800,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder12,
  RoundedBorder9,
  CircleBorder22,
}

enum ButtonPadding {
  PaddingAll16,
  PaddingT16,
  PaddingT2,
  PaddingAll11,
  PaddingT12,
  PaddingAll7,
  PaddingT18,
}

enum ButtonVariant {
  FillLightgreen400,
  FillIndigo500,
  OutlineWhiteA700,
  OutlineIndigoA400,
  FillWhiteA700,
  OutlineGray200,
  OutlineGray200_1,
  FillGray200,
  FillBlue50a2,
  FillIndigoA400,
  OutlineGray300,
  OutlineDeeporange800,
}

enum ButtonFontStyle {
  GeneralSansMedium16,
  GeneralSansMedium939,
  GeneralSansMedium16WhiteA700,
  GeneralSansMedium16IndigoA400,
  GeneralSansMedium12,
  GeneralSansMedium14,
  GeneralSansMedium14IndigoA400,
  GeneralSansMedium14Bluegray500,
  GeneralSansMedium14Red900,
  GeneralSansMedium16Bluegray500,
  GeneralSansSemibold24,
  GeneralSansRegular14,
  GeneralSansMedium14WhiteA700,
  GeneralSansMedium16Deeporange800,
}
