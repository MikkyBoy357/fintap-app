import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'content20_item_model.dart';

class LinkedAccountModel {
  RxList<Content20ItemModel> content20ItemList =
      RxList(
        [
          Content20ItemModel(img : ImageConstant.imgIcon40x40,title: 'Spotify'),

          Content20ItemModel(img : ImageConstant.accounts2,title: 'Steam'),
          
          Content20ItemModel(img : ImageConstant.accounts3,title: 'Amazon'),

          Content20ItemModel(img : ImageConstant.accounts4,title: 'Netflix'),
          ]
        
        );
}
