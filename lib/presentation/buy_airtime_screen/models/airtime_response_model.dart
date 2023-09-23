
class BuyAirtimeResponseModel {
  bool? status;
  String? message;
  Data? data;

  BuyAirtimeResponseModel({this.status, this.message, this.data});

  BuyAirtimeResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  String? userid;
  String? description;
  int? amount;
  String? reference;
  String? type;
  String? service;
  String? status;
  String? prevBalance;
  String? balanceAfter;
  Extra? extra;

  Data({this.userid, this.description, this.amount, this.reference, this.type, this.service, this.status, this.prevBalance, this.balanceAfter, this.extra});

  Data.fromJson(Map<String, dynamic> json) {
    userid = json["userid"];
    description = json["description"];
    amount = json["amount"];
    reference = json["reference"];
    type = json["type"];
    service = json["service"];
    status = json["status"];
    prevBalance = json["prev_balance"];
    balanceAfter = json["balance_after"];
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
    if(extra != null) {
      _data["extra"] = extra?.toJson();
    }
    return _data;
  }
}

class Extra {
  String? phone;
  String? status;
  String? productName;
  int? unitPrice;
  int? discount;
  int? totalAmount;
  String? method;
  String? transactionId;

  Extra({this.phone, this.status, this.productName, this.unitPrice, this.discount, this.totalAmount, this.method, this.transactionId});

  Extra.fromJson(Map<String, dynamic> json) {
    phone = json["phone"];
    status = json["status"];
    productName = json["product_name"];
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
    _data["unit_price"] = unitPrice;
    _data["discount"] = discount;
    _data["total_amount"] = totalAmount;
    _data["method"] = method;
    _data["transactionId"] = transactionId;
    return _data;
  }
}