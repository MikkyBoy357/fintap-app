
class BuyDataModel {
  bool? status;
  String? message;
  List<Data>? data;

  BuyDataModel({this.status, this.message, this.data});

  BuyDataModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
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

class Data {
  String? serviceId;
  String? name;
  String? minimiumAmount;
  String? maximumAmount;
  String? convinienceFee;
  String? commision;
  String? image;

  Data({this.serviceId, this.name, this.minimiumAmount, this.maximumAmount, this.convinienceFee, this.commision, this.image});

  Data.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    minimiumAmount = json["minimium_amount"].toString();
    maximumAmount = json["maximum_amount"].toString();
    convinienceFee = json["convinience_fee"].toString();
    commision = json["commision"].toString();
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
    _data["image"] = image;
    return _data;
  }
}