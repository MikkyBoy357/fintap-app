import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import '../../coin_reward_screen/models/content2_item_model.dart';

class MyRewardModel {
  RxList<Content2ItemModel> content4ItemList =
       RxList([ 
        Content2ItemModel(img: ImageConstant.imgGoogleplay,
        name: 'Google Play Cash Voucher'),
        Content2ItemModel(img: ImageConstant.myCoins2
        ,name: 'Steam Cash Voucher'),
        Content2ItemModel(img: ImageConstant.myCoins3
        ,name: 'Free 1 Month Netflix Family'),
        Content2ItemModel(img: ImageConstant.myCoins4,
        name: 'AirBnB Discount up to 15%'),
        ]);
}
