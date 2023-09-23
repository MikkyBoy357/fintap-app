import 'package:get/get.dart';
import 'content6_item_model.dart';

class SendMoneyToFriendTwoModel {
  RxList<Content6ItemModel> content6ItemList =
      RxList(
      [
           Content6ItemModel(isStared: false.obs),
           Content6ItemModel(isStared: false.obs),
           Content6ItemModel(isStared: false.obs),
      
      ]
         );

  RxList<Content6ItemModel> content7ItemList =
      RxList(
      [
           Content6ItemModel(isStared: false.obs),
           Content6ItemModel(isStared: false.obs),
      ]
         );

  RxList<Content6ItemModel> content8ItemList =
      RxList(
      [
           Content6ItemModel(isStared: false.obs),
           Content6ItemModel(isStared: false.obs),
           Content6ItemModel(isStared: false.obs),
      ]
         );

}
