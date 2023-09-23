import 'deposit_extra_model.dart';

class TransactionModel {
  bool? status;
  String? message;
  List<Data>? data;

  TransactionModel({this.status, this.message, this.data});

  TransactionModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
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

class Data {
  String? id;
  String? userid;
  String? description;
  String? amount;
  String? reference;
  String? type;
  String? prevBalance;
  String? balanceAfter;
  String? service;
  String? status;
  Extra? extra;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.userid,
      this.description,
      this.amount,
      this.reference,
      this.type,
      this.prevBalance,
      this.balanceAfter,
      this.service,
      this.status,
      this.extra,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userid = json["userid"];
    description = json["description"];
    amount = json["amount"];
    reference = json["reference"];
    type = json["type"];
    prevBalance = json["prev_balance"];
    balanceAfter = json["balance_after"];
    service = json["service"];
    status = json["status"];

    extra = json["extra"] == null ? null : Extra.fromJson(json["extra"]);

    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["userid"] = userid;
    _data["description"] = description;
    _data["amount"] = amount;
    _data["reference"] = reference;
    _data["type"] = type;
    _data["prev_balance"] = prevBalance;
    _data["balance_after"] = balanceAfter;
    _data["service"] = service;
    _data["status"] = status;
    if (extra != null) {
      _data["extra"] = extra?.toJson();
    }
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class Extra {
  EventData? eventData;
  String? eventType;
  String? charge;
  String? phone;
  String? status;
  String? productName;
  String? adminName;
  String? adminEmail;
  String? plan;
  String? unitPrice;
  String? discount;
  String? totalAmount;
  String? method;
  String? transactionId;

  Extra(
      {this.eventData,
      this.eventType,
      this.charge,
      this.phone,
      this.status,
      this.productName,
      this.adminName,
      this.adminEmail,
      this.plan,
      this.unitPrice,
      this.discount,
      this.totalAmount,
      this.method,
      this.transactionId});

  Extra.fromJson(Map<String, dynamic> json) {
    eventData = json["eventData"] == null
        ? null
        : EventData.fromJson(json["eventData"]);
    eventType = json["eventType"];
    charge = json["charge"].toString();
    phone = json["phone"];
    status = json["status"];
    plan = json["plan"];
    productName = json["product_name"];
    adminName = json["admin_name"];
    adminEmail = json["admin_email"];
    unitPrice = json["unit_price"].toString();
    discount = json["discount"].toString();
    totalAmount = json["total_amount"].toString();
    method = json["method"];
    transactionId = json["transactionId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["phone"] = phone;
    _data["status"] = status;
    _data["product_name"] = productName;
    _data["plan"] = plan;
    _data["unit_price"] = unitPrice;
    _data["discount"] = discount;
    _data["total_amount"] = totalAmount;
    _data["method"] = method;
    _data["transactionId"] = transactionId;
    return _data;
  }
}
