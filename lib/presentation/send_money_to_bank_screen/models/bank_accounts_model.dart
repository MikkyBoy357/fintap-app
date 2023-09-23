class BankAccountResponseModel {
  bool? status;
  String? message;
  List<BankAccountData>? data;

  BankAccountResponseModel({this.status, this.message, this.data});

  BankAccountResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null || json["data"] == false
        ? []
        : (json["data"] as List)
            .map((e) => BankAccountData.fromJson(e))
            .toList();
  }
}

class BankAccountData {
  String? id;
  String? userid;
  String? bankName;
  String? accountNumber;
  String? accountName;
  String? bankCode;
  String? createdAt;
  String? updatedAt;

  BankAccountData(
      {this.id,
      this.userid,
      this.bankName,
      this.accountNumber,
      this.accountName,
      this.bankCode,
      this.createdAt,
      this.updatedAt});

  BankAccountData.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userid = json["userid"];
    bankName = json["bankName"];
    accountNumber = json["accountNumber"];
    accountName = json["accountName"];
    bankCode = json["bankCode"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }
}
