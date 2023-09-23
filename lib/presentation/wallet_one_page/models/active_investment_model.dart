class ActiveInvestmentModel {
  bool? status;
  String? message;
  List<Data>? data;

  ActiveInvestmentModel({this.status, this.message, this.data});

  ActiveInvestmentModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
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
    prevBalance = json["prev_balance"].toString();
    balanceAfter = json["balance_after"].toString();
    status = json["status"];
    method = json["method"];
    transactionId = json["transactionId"];
    createDate = json["create_date"];
    dueDate = json["due_date"];
  }
}
