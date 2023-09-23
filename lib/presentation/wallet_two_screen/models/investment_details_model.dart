class InvestmentDetailsModel {
  bool? status;
  String? message;
  List<Data>? data;

  InvestmentDetailsModel({this.status, this.message, this.data});

  InvestmentDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? plan;
  String? duration;
  String? investedAmount;
  String? percentage;
  String? expectedProfit;
  String? expectedReturn;
  String? prevBalance;
  String? balanceAfter;
  String? status;
  String? method;
  String? transactionId;
  String? createDate;
  String? dueDate;

  Extra(
      {this.plan,
      this.duration,
      this.investedAmount,
      this.percentage,
      this.expectedProfit,
      this.expectedReturn,
      this.prevBalance,
      this.balanceAfter,
      this.status,
      this.method,
      this.transactionId,
      this.createDate,
      this.dueDate});

  Extra.fromJson(Map<String, dynamic> json) {
    plan = json["plan"];
    duration = json["duration"];
    investedAmount = json["invested_amount"].toString();
    percentage = json["percentage"].toString();
    expectedProfit = json["expected_profit"].toString();
    expectedReturn = json["expected_return"].toString();
    prevBalance = json["prev_balance"];
    balanceAfter = json["balance_after"];
    status = json["status"];
    method = json["method"];
    transactionId = json["transactionId"];
    createDate = json["create_date"];
    dueDate = json["due_date"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["plan"] = plan;
    _data["duration"] = duration;
    _data["invested_amount"] = investedAmount;
    _data["percentage"] = percentage;
    _data["expected_profit"] = expectedProfit;
    _data["expected_return"] = expectedReturn;
    _data["prev_balance"] = prevBalance;
    _data["balance_after"] = balanceAfter;
    _data["status"] = status;
    _data["method"] = method;
    _data["transactionId"] = transactionId;
    _data["create_date"] = createDate;
    _data["due_date"] = dueDate;
    return _data;
  }
}
