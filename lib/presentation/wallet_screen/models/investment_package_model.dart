class InvestmentPackage {
  bool? status;
  String? message;
  List<PackageData>? data;

  InvestmentPackage({this.status, this.message, this.data});

  InvestmentPackage.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => PackageData.fromJson(e)).toList();
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
}

class PackageData {
  String? serviceId;
  String? name;
  String? convinienceFee;
  String? commision;
  String? productType;
  List<Variations>? variations;
  String? image;

  PackageData(
      {this.serviceId,
      this.name,
      this.convinienceFee,
      this.commision,
      this.productType,
      this.variations,
      this.image});

  PackageData.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    convinienceFee = json["convinience_fee"].toString();
    commision = json["commision"].toString();
    productType = json["product_type"];
    variations = json["variations"] == null
        ? null
        : (json["variations"] as List)
            .map((e) => Variations.fromJson(e))
            .toList();
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["serviceID"] = serviceId;
    _data["name"] = name;
    _data["convinience_fee"] = convinienceFee;
    _data["commision"] = commision;
    _data["product_type"] = productType;
    if (variations != null) {
      _data["variations"] = variations?.map((e) => e.toJson()).toList();
    }
    _data["image"] = image;
    return _data;
  }
}

class Variations {
  String? variationCode;
  String? name;
  String? duration;
  String? breakable;
  String? minimiumAmount;
  String? maximumAmount;
  String? percentage;

  Variations(
      {this.variationCode,
      this.name,
      this.duration,
      this.breakable,
      this.minimiumAmount,
      this.maximumAmount,
      this.percentage});

  Variations.fromJson(Map<String, dynamic> json) {
    variationCode = json["variation_code"];
    name = json["name"];
    duration = json["duration"];
    breakable = json["breakable"];
    minimiumAmount = json["minimium_amount"].toString();
    maximumAmount = json["maximum_amount"].toString();
    percentage = json["percentage"].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["variation_code"] = variationCode;
    _data["name"] = name;
    _data["duration"] = duration;
    _data["breakable"] = breakable;
    _data["minimium_amount"] = minimiumAmount;
    _data["maximum_amount"] = maximumAmount;
    _data["percentage"] = percentage;
    return _data;
  }
}
