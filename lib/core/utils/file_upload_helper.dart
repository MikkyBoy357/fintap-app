import 'package:fintap/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';

import '../app_export.dart';

class FileManager {
  FileManager();

  showModelSheetForImage(
      {int maxFileSize = 10 * 1024,
      List<String> allowedExtensions = const [],
      void Function(List<String?>)? getImages}) async {
    await Get.bottomSheet(
        SafeArea(
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: getPadding(all: 24),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: getPadding(top: 1),
                      child: Text("msg_change_profile_picture".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansSemibold18.copyWith(
                              letterSpacing: getHorizontalSize(0.50),
                              height: getVerticalSize(0.99)))),
                  CustomImageView(
                      svgPath: ImageConstant.imgCloseGray900,
                      height: getSize(24.00),
                      width: getSize(24.00),
                      margin: getMargin(left: 36, bottom: 2),
                      onTap: () {
                        Get.back();
                      })
                ]),
              ),
              Container(
                margin: getMargin(left: 24, right: 24, bottom: 32),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          "lbl_choose_photo".tr,
                          style: AppStyle.txtGeneralSansMedium14Bluegray900,
                        ),
                        trailing: CustomImageView(
                            rotateifRtl: true,
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(24.00),
                            width: getSize(24.00)),
                        onTap: () async {
                          List<String?> imageList = await _imgFromGallery(
                              maxFileSize, allowedExtensions);
                          if (getImages != null) {
                            getImages(imageList);
                          }
                          Get.back();
                        }),
                    CustomDivider(
                      topPadding: 10,
                      bottomPadding: 10,
                    ),
                    ListTile(
                      title: Text(
                        "lbl_take_photo".tr,
                        style: AppStyle.txtGeneralSansMedium14Bluegray900,
                      ),
                      trailing: CustomImageView(
                          rotateifRtl: true,
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(24.00),
                          width: getSize(24.00)),
                      onTap: () async {
                        List<String?> imageList = await _imgFromCamera(
                            maxFileSize, allowedExtensions);
                        if (getImages != null) {
                          getImages(imageList);
                        }
                        Get.back();
                      },
                    ),
                    CustomDivider(
                      topPadding: 10,
                      bottomPadding: 10,
                    ),
                    ListTile(
                      title: Text(
                        "lbl_remove_photo".tr,
                        style: AppStyle.txtGeneralSansMedium14Bluegray900,
                      ),
                      trailing: CustomImageView(
                          rotateifRtl: true,
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(24.00),
                          width: getSize(24.00)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: ColorConstant.gray100);
  }

  Future<List<String?>> _imgFromGallery(
      int maxFileSize, List<String>? allowedExtensions) async {
    List<String?> files = [];
    List<Media>? res1 = await ImagesPicker.pick(
      pickType: PickType.image,
      maxSize: maxFileSize,
    );
    res1?.forEach((element) {
      var extension = element.path.split('.');
      if (allowedExtensions != null && allowedExtensions.isNotEmpty) {
        if (allowedExtensions.contains(extension.last)) {
          files.add(element.path);
        } else {
          Get.snackbar('msg', 'only $allowedExtensions images are allowed');
        }
      } else {
        files.add(element.path);
      }
    });
    return files;
  }

  Future<List<String?>> _imgFromCamera(
      int maxFileSize, List<String>? allowedExtensions) async {
    List<String?> files = [];
    List<Media>? res1 = await ImagesPicker.openCamera(
      pickType: PickType.image,
      maxSize: maxFileSize,
    );
    res1?.forEach((element) {
      var extension = element.path.split('.');
      if (allowedExtensions != null && allowedExtensions.isNotEmpty) {
        if (allowedExtensions.contains(extension.last)) {
          files.add(element.path);
        } else {
          Get.snackbar('msg', 'only $allowedExtensions images are allowed');
        }
      } else {
        files.add(element.path);
      }
    });
    return files;
  }
}
