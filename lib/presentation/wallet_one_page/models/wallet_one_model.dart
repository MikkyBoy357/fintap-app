import 'package:fintap/core/utils/image_constant.dart';
import 'package:get/get.dart';
import 'wallet_one_item_model.dart';

class WalletOneModel {
  RxList<WalletOneItemModel> walletOneItemList = RxList([
    WalletOneItemModel(
        img: ImageConstant.imgAirplaneGreen600,
        title: 'Korea Trip',
        progress: 75),
    WalletOneItemModel(img: ImageConstant.car, title: 'New Car', progress: 25),
    WalletOneItemModel(
        img: ImageConstant.imgAirplaneGreen600,
        title: 'Bali Trip',
        progress: 50),
  ]);
}
