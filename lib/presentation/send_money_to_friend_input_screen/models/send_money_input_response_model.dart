class SendMoneyInputResponseModel {
  bool? status;
  String? message;
  Data? data;

  SendMoneyInputResponseModel({this.status, this.message, this.data});

  SendMoneyInputResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }
}

class Data {
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

  Data(
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

  Data.fromJson(Map<String, dynamic> json) {
    userid = json["userid"];
    description = json["description"];
    amount = json["amount"].toString();
    reference = json["reference"];
    type = json["type"];
    service = json["service"];
    status = json["status"];
    prevBalance = json["prev_balance"];
    balanceAfter = json["balance_after"];
    extra = json["extra"] == null ? null : Extra.fromJson(json["extra"]);
  }
}

class Extra {
  String? reciepient;
  String? status;
  String? productName;
  String? amount;
  String? discount;
  String? transferfee;
  String? totalAmount;
  String? method;
  String? transactionId;

  Extra(
      {this.reciepient,
      this.status,
      this.productName,
      this.amount,
      this.discount,
      this.transferfee,
      this.totalAmount,
      this.method,
      this.transactionId});

  Extra.fromJson(Map<String, dynamic> json) {
    reciepient = json["reciepient"];
    status = json["status"];
    productName = json["product_name"];
    amount = json["amount"].toString();
    discount = json["discount"].toString();
    transferfee = json["transferfee"].toString();
    totalAmount = json["total_amount"].toString();
    method = json["method"];
    transactionId = json["transactionId"];
  }
}
