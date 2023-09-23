class CreateInvestmentResponse {
  bool? status;
  String? message;
  Data? data;

  CreateInvestmentResponse({this.status, this.message, this.data});

  CreateInvestmentResponse.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
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
