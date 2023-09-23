class AirtimeModel {
  bool? status;
  String? message;
  List<AirtimeData>? data;

  AirtimeModel({this.status, this.message, this.data});

  AirtimeModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => AirtimeData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  @override
  String toString() {
    return 'AirtimeModel(status: $status, message: $message, data: $data)';
  }
}

class AirtimeData {
  String? serviceId;
  String? name;
  String? minimiumAmount;
  String? maximumAmount;
  String? convinienceFee;
  String? commision;
  String? image;

  AirtimeData(
      {this.serviceId,
      this.name,
      this.minimiumAmount,
      this.maximumAmount,
      this.convinienceFee,
      this.commision,
      this.image});

  AirtimeData.fromJson(Map<String, dynamic> json) {
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

  @override
  String toString() {
    return 'AirtimeData(serviceId: $serviceId, name: $name, minimiumAmount: $minimiumAmount, maximumAmount: $maximumAmount, convinienceFee: $convinienceFee, commision: $commision, image: $image)';
  }
}
