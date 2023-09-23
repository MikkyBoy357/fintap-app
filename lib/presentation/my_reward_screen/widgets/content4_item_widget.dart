import 'package:fintap/presentation/coin_reward_detail_screen/coin_reward_detail_screen.dart';
import 'package:fintap/presentation/coin_reward_detail_screen/controller/coin_reward_detail_controller.dart';
import 'package:fintap/widgets/spacing.dart';

import '../../coin_reward_screen/models/content2_item_model.dart';
import '../controller/my_reward_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Content4ItemWidget extends StatelessWidget {
  Content4ItemWidget(this.content4ItemModelObj);

  Content2ItemModel content4ItemModelObj;

  var controller = Get.find<MyRewardController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.bottomSheet(
          CoinRewardDetailScreen(
            Get.put(CoinRewardDetailController()),
          ),
          isScrollControlled: true),
      child: Container(
        width: size.width,
        padding: getPadding(top: 14, bottom: 14, left: 16, right: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: getVerticalSize(
                56.00,
              ),
              width: getHorizontalSize(
                72.00,
              ),
              margin: getMargin(
                top: 1,
                bottom: 1,
              ),
              padding: getPadding(
                left: 20,
                top: 12,
                right: 20,
                bottom: 12,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgContent,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: content4ItemModelObj.img,
                    height: getSize(
                      32.00,
                    ),
                    width: getSize(
                      32.00,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            HorizontalSpace(width: 12),
            Expanded(
              child: Padding(
                padding: getPadding(top: 12, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      content4ItemModelObj.name,
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style:
                          AppStyle.txtGeneralSansMedium14Bluegray900.copyWith(
                        height: getVerticalSize(
                          0.95,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "lbl_192".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style:
                            AppStyle.txtGeneralSansMedium12Bluegray200.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.50,
                          ),
                          height: getVerticalSize(
                            0.99,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Text(
                "lbl_use".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansSemibold14.copyWith(
                  height: getVerticalSize(
                    1.27,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
