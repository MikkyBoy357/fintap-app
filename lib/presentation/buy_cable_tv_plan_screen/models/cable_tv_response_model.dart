class CableTvResponseModel {
  bool? status;
  String? message;
  ResponseData? data;

  CableTvResponseModel({this.status, this.message, this.data});

  CableTvResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : ResponseData.fromJson(json["data"]);
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

class ResponseData {
  String? userid;
  String? description;
  String? amount;
  String? reference;
  String? type;
  String? service;
  String? status;
  String? prevBalance;
  String? balanceAfter;
  Extra? extra;

  ResponseData(
      {this.userid,
      this.description,
      this.amount,
      this.reference,
      this.type,
      this.service,
      this.status,
      this.prevBalance,
      this.balanceAfter,
      this.extra});

  ResponseData.fromJson(Map<String, dynamic> json) {
    userid = json["userid"];
    description = json["description"];
    amount = json["amount"].toString();
    reference = json["reference"];
    type = json["type"];
    service = json["service"];
    status = json["status"];
    prevBalance = json["prev_balance"].toString();
    balanceAfter = json["balance_after"].toString();
    extra = json["extra"] == null ? null : Extra.fromJson(json["extra"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["userid"] = userid;
    _data["description"] = description;
    _data["amount"] = amount;
    _data["reference"] = reference;
    _data["type"] = type;
    _data["service"] = service;
    _data["status"] = status;
    _data["prev_balance"] = prevBalance;
    _data["balance_after"] = balanceAfter;
    if (extra != null) {
      _data["extra"] = extra?.toJson();
    }
    return _data;
  }
}

class Extra {
  String? phone;
  String? status;
  String? productName;
  String? uniqueElement;
  int? unitPrice;
  int? discount;
  int? totalAmount;
  String? method;
  String? transactionId;

  Extra(
      {this.phone,
      this.status,
      this.productName,
      this.uniqueElement,
      this.unitPrice,
      this.discount,
      this.totalAmount,
      this.method,
      this.transactionId});

  Extra.fromJson(Map<String, dynamic> json) {
    phone = json["phone"];
    status = json["status"];
    productName = json["product_name"];
    uniqueElement = json["unique_element"];
    unitPrice = json["unit_price"];
    discount = json["discount"];
    totalAmount = json["total_amount"];
    method = json["method"];
    transactionId = json["transactionId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["phone"] = phone;
    _data["status"] = status;
    _data["product_name"] = productName;
    _data["unique_element"] = uniqueElement;
    _data["unit_price"] = unitPrice;
    _data["discount"] = discount;
    _data["total_amount"] = totalAmount;
    _data["method"] = method;
    _data["transactionId"] = transactionId;
    return _data;
  }
}
