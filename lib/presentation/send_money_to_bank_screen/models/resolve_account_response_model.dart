
class ResolveAccountResponseModel {
  bool? status;
  String? message;
  Data? data;

  ResolveAccountResponseModel({this.status, this.message, this.data});

  ResolveAccountResponseModel.fromJson(Map<String, dynamic> json) {
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
  String? accountNumber;
  String? accountName;
  String? bankCode;

  Data({this.accountNumber, this.accountName, this.bankCode});

  Data.fromJson(Map<String, dynamic> json) {
    accountNumber = json["accountNumber"];
    accountName = json["accountName"];
    bankCode = json["bankCode"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["accountNumber"] = accountNumber;
    _data["accountName"] = accountName;
    _data["bankCode"] = bankCode;
    return _data;
  }
}