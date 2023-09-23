
class DataPackageModel {
  bool? status;
  String? message;
  List<ResData>? data;

  DataPackageModel({this.status, this.message, this.data});

  DataPackageModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : (json["data"] as List).map((e) => ResData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class ResData {
  String? serviceId;
  String? name;
  String? minimiumAmount;
  String? maximumAmount;
  String? convinienceFee;
  String? commision;
  List<Variations>? variations;
  String? image;

  ResData({this.serviceId, this.name, this.minimiumAmount, this.maximumAmount, this.convinienceFee, this.commision, this.variations, this.image});

  ResData.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    minimiumAmount = json["minimium_amount"].toString();
    maximumAmount = json["maximum_amount"].toString();
    convinienceFee = json["convinience_fee"].toString();
    commision = json["commision"].toString();
    variations = json["variations"] == null ? null : (json["variations"] as List).map((e) => Variations.fromJson(e)).toList();
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["serviceID"] = serviceId;
    _data["name"] = name;
    _data["minimium_amount"] = minimiumAmount;
    _data["maximum_amount"] = maximumAmount;
    _data["convinience_fee"] = convinienceFee;
    _data["commision"] = commision;
    if(variations != null) {
      _data["variations"] = variations?.map((e) => e.toJson()).toList();
    }
    _data["image"] = image;
    return _data;
  }
}

class Variations {
  String? variationCode;
  String? name;
  String? variationAmount;
  String? fixedPrice;

  Variations({this.variationCode, this.name, this.variationAmount, this.fixedPrice});

  Variations.fromJson(Map<String, dynamic> json) {
    variationCode = json["variation_code"];
    name = json["name"];
    variationAmount = json["variation_amount"];
    fixedPrice = json["fixedPrice"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["variation_code"] = variationCode;
    _data["name"] = name;
    _data["variation_amount"] = variationAmount;
    _data["fixedPrice"] = fixedPrice;
    return _data;
  }
}