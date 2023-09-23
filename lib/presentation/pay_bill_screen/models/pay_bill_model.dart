import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'content13_item_model.dart';

class PayBillModel {
  RxList<Content13ItemModel> content12ItemList =
      RxList( 
      [  
        //  Content13ItemModel(img: ImageConstant.waterDrop,title: "lbl_water".tr,),
         Content13ItemModel(img: ImageConstant.phone, title:  "Airtime", slug: "airtime" ),
         Content13ItemModel(img: ImageConstant.creditCard,title: "Data", slug: "data" ),
         Content13ItemModel(img: ImageConstant.gridElectricity,title: "Electricity", slug: "electricity" ),
         Content13ItemModel(img: ImageConstant.tv,title: "Cable TV", slug: "cable-tv" ),
        //  Content13ItemModel(img: ImageConstant.gridLifeInsurance,title: "lbl_life_insurance".tr, ),
         ]
        
        );

  RxList<Content13ItemModel> content13ItemList =
      RxList( 
      [  
         Content13ItemModel(img: ImageConstant.imgClockIndigoA400,title: "lbl_water", slug: "water", isStarred: true.obs),
         Content13ItemModel(img: ImageConstant.electricity,title: "lbl_eelectricity".tr, isStarred: true.obs , slug: "eelctricity"),
         Content13ItemModel(img: ImageConstant.lifeInsurance,title: "lbl_life_insurance".tr, isStarred: true.obs, slug: "life-insurance" ),
         ]
        
        );
}
