import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'coin_item_model.dart';
import 'content2_item_model.dart';

class CoinRewardModel {
  RxList<CoinItemModel> coinItemList =   RxList(
        [ 
          CoinItemModel( date: 'Today',numOfCoins:'+5' ),
          CoinItemModel( date: 'Day 2',numOfCoins:'+10' ),
          CoinItemModel( date: 'Day 3',numOfCoins:'+10' ),
          CoinItemModel( date: 'Day 4',numOfCoins:'+15' ),
          CoinItemModel( date: 'Day 5',numOfCoins:'+25' ),
          CoinItemModel( date: 'Day 6',numOfCoins:'+100' ),
          ]
         );

  RxList<Content2ItemModel> content2ItemList =
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
