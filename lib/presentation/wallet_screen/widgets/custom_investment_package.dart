import 'package:fintap/core/app_export.dart';

import 'package:flutter/material.dart';

import '../../../core/utils/capitalize_all_word.dart';
import '../models/Investment_package_model.dart';


//ignore: must_be_immutable
class CustomInvestmentPackageDropDown extends StatelessWidget {
  CustomInvestmentPackageDropDown(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.value,
      this.onChanged,
      this.validator});

  DropDownPadding? padding;

  DropDownShape? shape;

  DropDownVariant? variant;

  DropDownFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  Widget? icon;

  String? hintText;
  Variations? value;
  Widget? prefix;

  BoxConstraints? prefixConstraints;

  List<Variations>? items;

  Function(Variations)? onChanged;

  FormFieldValidator<Variations>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: DropdownButtonFormField<Variations>(
        isExpanded: true,
        focusNode: focusNode,
        value: value,
        icon: icon,
        style: TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w400,
        ),
        decoration: _buildDecoration(),
        items: items?.map((Variations variation) {
          return DropdownMenuItem<Variations>(
            value: variation,
            child: Text(
              capitalizeAllWord(variation.name ?? ""),
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value!);
        },
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.GeneralSansRegular14:
        return TextStyle(
          color: Colors.grey,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w400,
        );
      case DropDownFontStyle.GeneralSansMedium14Bluegray900:
        return TextStyle(
          color: Colors.grey,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w500,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case DropDownVariant.OutlineGray200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray200,
            width: 1,
          ),
        );
      case DropDownVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case DropDownVariant.OutlineGray200:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }  
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.OutlineGray200:
        return true;
      case DropDownVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case DropDownPadding.PaddingT16:
        return getPadding(
          left: 16,
          top: 16,
          bottom: 16,
        );
      case DropDownPadding.PaddingT22:
        return getPadding(
          top: 22,
          bottom: 22,
        );
      default:
        return getPadding(
          left: 16,
          top: 16,
          bottom: 16,
        );
    }
  }
}

enum DropDownPadding {
  PaddingT1,
  PaddingT16,
  PaddingT22,
}

enum DropDownShape {
  RoundedBorder8,
}

enum DropDownVariant {
  None,
  FillWhiteA700,
  OutlineGray200,
}

enum DropDownFontStyle {
  GeneralSansMedium14,
  GeneralSansRegular14,
  GeneralSansMedium14Bluegray900,
}
