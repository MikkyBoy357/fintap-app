
class SendMoneyToBankResponseModel {
  bool? status;
  String? message;
  BankTransferData? data;

  SendMoneyToBankResponseModel({this.status, this.message, this.data});

  SendMoneyToBankResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : BankTransferData.fromJson(json["data"]);
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

class BankTransferData {
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

  BankTransferData({this.userid, this.description, this.amount, this.reference, this.type, this.service, this.status, this.prevBalance, this.balanceAfter, this.extra});

  BankTransferData.fromJson(Map<String, dynamic> json) {
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
  BeneficiaryDetails? beneficiaryDetails;
  String? status;
  String? productName;
  int? amount;
  int? discount;
  int? transferfee;
  int? totalAmount;
  String? method;
  String? transactionId;

  Extra({this.beneficiaryDetails, this.status, this.productName, this.amount, this.discount, this.transferfee, this.totalAmount, this.method, this.transactionId});

  Extra.fromJson(Map<String, dynamic> json) {
    beneficiaryDetails = json["beneficiary_details"] == null ? null : BeneficiaryDetails.fromJson(json["beneficiary_details"]);
    status = json["status"];
    productName = json["product_name"];
    amount = json["amount"];
    discount = json["discount"];
    transferfee = json["transferfee"];
    totalAmount = json["total_amount"];
    method = json["method"];
    transactionId = json["transactionId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(beneficiaryDetails != null) {
      _data["beneficiary_details"] = beneficiaryDetails?.toJson();
    }
    _data["status"] = status;
    _data["product_name"] = productName;
    _data["amount"] = amount;
    _data["discount"] = discount;
    _data["transferfee"] = transferfee;
    _data["total_amount"] = totalAmount;
    _data["method"] = method;
    _data["transactionId"] = transactionId;
    return _data;
  }
}

class BeneficiaryDetails {
  String? id;
  String? userid;
  String? bankName;
  String? accountNumber;
  String? accountName;
  String? bankCode;
  String? createdAt;
  String? updatedAt;

  BeneficiaryDetails({this.id, this.userid, this.bankName, this.accountNumber, this.accountName, this.bankCode, this.createdAt, this.updatedAt});

  BeneficiaryDetails.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userid = json["userid"];
    bankName = json["bankName"];
    accountNumber = json["accountNumber"];
    accountName = json["accountName"];
    bankCode = json["bankCode"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["userid"] = userid;
    _data["bankName"] = bankName;
    _data["accountNumber"] = accountNumber;
    _data["accountName"] = accountName;
    _data["bankCode"] = bankCode;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}