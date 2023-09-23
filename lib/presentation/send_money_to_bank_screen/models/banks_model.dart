
class BanksModel {
  bool? status;
  String? message;
  List<BanksData>? data;

  BanksModel({this.status, this.message, this.data});

  BanksModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : (json["data"] as List).map((e) => BanksData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class BanksData {
  String? name;
  String? code;
  dynamic ussdTemplate;
  dynamic baseUssdCode;
  dynamic transferUssdTemplate;

  BanksData({this.name, this.code, this.ussdTemplate, this.baseUssdCode, this.transferUssdTemplate});

  BanksData.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    code = json["code"];
    ussdTemplate = json["ussdTemplate"];
    baseUssdCode = json["baseUssdCode"];
    transferUssdTemplate = json["transferUssdTemplate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["code"] = code;
    _data["ussdTemplate"] = ussdTemplate;
    _data["baseUssdCode"] = baseUssdCode;
    _data["transferUssdTemplate"] = transferUssdTemplate;
    return _data;
  }
}