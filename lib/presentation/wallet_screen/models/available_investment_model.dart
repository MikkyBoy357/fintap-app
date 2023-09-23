class AvailableInvestments {
  bool? status;
  String? message;
  List<InvestmentData>? data;

  AvailableInvestments({this.status, this.message, this.data});

  AvailableInvestments.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List)
            .map((e) => InvestmentData.fromJson(e))
            .toList();
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

class InvestmentData {
  String? serviceId;
  String? name;
  String? convinienceFee;
  String? commision;
  String? productType;
  String? image;

  InvestmentData(
      {this.serviceId,
      this.name,
      this.convinienceFee,
      this.commision,
      this.productType,
      this.image});

  InvestmentData.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    convinienceFee = json["convinience_fee"].toString();
    commision = json["commision"].toString();
    productType = json["product_type"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["serviceID"] = serviceId;
    _data["name"] = name;
    _data["convinience_fee"] = convinienceFee;
    _data["commision"] = commision;
    _data["product_type"] = productType;
    _data["image"] = image;
    return _data;
  }
}
