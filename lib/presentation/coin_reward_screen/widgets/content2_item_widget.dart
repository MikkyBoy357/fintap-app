import '../../coin_reward_detail_screen/coin_reward_detail_screen.dart';
import '../../coin_reward_detail_screen/controller/coin_reward_detail_controller.dart';
import '../controller/coin_reward_controller.dart';
import '../models/content2_item_model.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Content2ItemWidget extends StatelessWidget {
  Content2ItemWidget(this.content2ItemModelObj);

  Content2ItemModel content2ItemModelObj;

  var controller = Get.find<CoinRewardController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.bottomSheet(
          CoinRewardDetailScreen(
            Get.put(CoinRewardDetailController()),
          ),
          isScrollControlled: true),
      child: Container(
        padding: getPadding(
          top: 14,
          bottom: 14,
        ),
        child: Row(
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
                    imagePath: content2ItemModelObj.img,
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
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          113.00,
                        ),
                        child: Text(
                          content2ItemModelObj.name,
                          maxLines: null,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium14Bluegray900
                              .copyWith(
                            height: getVerticalSize(
                              0.95,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgSearchYellow500,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        margin: getMargin(
                          left: 49,
                          bottom: 19,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                          top: 1,
                          bottom: 17,
                        ),
                        child: Text(
                          "lbl_1_500".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtGeneralSansMedium12IndigoA400
                              .copyWith(
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
          ],
        ),
      ),
    );
  }
}
