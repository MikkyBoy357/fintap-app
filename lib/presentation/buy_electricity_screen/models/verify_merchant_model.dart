class VerifyMerchantModel {
  bool? status;
  String? message;
  MerchantData? data;

  VerifyMerchantModel({this.status, this.message, this.data});

  VerifyMerchantModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    if (json["data"] == null) {
      data = null;
    }
    if (json["data"] == {"erorr": ""}) {
      data = null;
    } else {
      data = MerchantData.fromJson(json["data"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class MerchantData {
  String? customerName;
  String? address;
  String? minPurchaseAmount;
  String? maxPurchaseAmount;
  String? meterNumber;
  String? lastPurchaseDays;
  String? customerPhone;
  String? meterType;

  MerchantData(
      {this.customerName,
      this.address,
      this.minPurchaseAmount,
      this.maxPurchaseAmount,
      this.meterNumber,
      this.lastPurchaseDays,
      this.customerPhone,
      this.meterType});

  MerchantData.fromJson(Map<String, dynamic> json) {
    customerName = json["Customer_Name"];
    address = json["Address"];
    minPurchaseAmount = json["Min_Purchase_Amount"].toString();
    maxPurchaseAmount = json["MAX_Purchase_Amount"].toString();
    meterNumber = json["MeterNumber"];
    lastPurchaseDays = json["Last_Purchase_Days"];
    customerPhone = json["Customer_Phone"];
    meterType = json["Meter_Type"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Customer_Name"] = customerName;
    _data["Address"] = address;
    _data["Min_Purchase_Amount"] = minPurchaseAmount;
    _data["MAX_Purchase_Amount"] = maxPurchaseAmount;
    _data["MeterNumber"] = meterNumber;
    _data["Last_Purchase_Days"] = lastPurchaseDays;
    _data["Customer_Phone"] = customerPhone;
    _data["Meter_Type"] = meterType;
    return _data;
  }
}
