// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/app_export.dart';
import '../presentation/language_screen/controller/language_controller.dart';

class CustomImageView extends StatelessWidget {
  ///[url] is required parameter for fetching network image
  String? url;

  ///[imagePath] is required parameter for showing png,jpg,etc image
  String? imagePath;

  ///[svgPath] is required parameter for showing svg image
  String? svgPath;

  ///[file] is required parameter for fetching image file
  File? file;

  double? height;
  double? width;
  Color? color;
  final BoxFit fit;
  final String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;
  bool isDark;
  bool rotateifRtl;

  ///a [CustomImageView] it can be used for showing any type of images
  /// it will shows the placeholder image if image is not found on network image
  CustomImageView({
    this.url,
    this.imagePath,
    this.svgPath,
    this.file,
    this.height,
    this.isDark = false,
    this.width,
    this.rotateifRtl = false,
    this.color,
    this.fit = BoxFit.fill,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder = 'assets/images/image_not_found.png',
  });
  var controller = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
// bool isDark =Theme.of(context).brightness==Brightness.dark;
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  ///build the image with border radius
  _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  ///build the image with border and border radius style
  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (svgPath != null && svgPath!.isNotEmpty) {
      return rotateifRtl && controller.locale == Locale('ar')
          ? isDark
              ? RotatedBox(
                  quarterTurns: 2,
                  child: Container(
                    height: height,
                    width: width,
                    child: SvgPicture.asset(
                      svgPath!,
                      height: height,
                      width: width,
                      fit: fit,
                      color: Colors.white,
                    ),
                  ),
                )
              : RotatedBox(
                  quarterTurns: 2,
                  child: Container(
                    height: height,
                    width: width,
                    child: SvgPicture.asset(
                      svgPath!,
                      height: height,
                      width: width,
                      fit: fit,
                      color: color,
                    ),
                  ),
                )
          : isDark
              ? Container(
                  height: height,
                  width: width,
                  child: SvgPicture.asset(
                    svgPath!,
                    height: height,
                    width: width,
                    fit: fit,
                    color: Colors.white,
                  ),
                )
              : Container(
                  height: height,
                  width: width,
                  child: SvgPicture.asset(
                    svgPath!,
                    height: height,
                    width: width,
                    fit: fit,
                    color: color,
                  ),
                );
    } else if (file != null && file!.path.isNotEmpty) {
      return Image.file(
        file!,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (url != null && url!.isNotEmpty) {
      return CachedNetworkImage(
        height: height,
        width: width,
        fit: fit,
        imageUrl: url!,
        color: color,
        placeholder: (context, url) => Container(
          height: 30,
          width: 30,
          child: LinearProgressIndicator(
            color: Colors.grey.shade200,
            backgroundColor: Colors.grey.shade100,
          ),
        ),
        errorWidget: (context, url, error) => Image.asset(
          placeHolder,
          height: height,
          width: width,
          fit: fit,
        ),
      );
    } else if (imagePath != null && imagePath!.isNotEmpty) {
      return rotateifRtl && controller.locale == Locale('ar')
          ? isDark
              ? RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                    imagePath!,
                    height: height,
                    width: width,
                    fit: fit,
                    color: Colors.white,
                  ),
                )
              : RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                    imagePath!,
                    height: height,
                    width: width,
                    fit: fit,
                    color: color,
                  ),
                )
          : isDark
              ? Image.asset(
                  imagePath!,
                  height: height,
                  width: width,
                  fit: fit,
                  color: Colors.white,
                )
              : Image.asset(
                  imagePath!,
                  height: height,
                  width: width,
                  fit: fit,
                  color: color,
                );
    }
    return SizedBox();
  }
}
