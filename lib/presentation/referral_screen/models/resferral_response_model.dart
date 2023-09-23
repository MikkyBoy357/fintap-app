
class ReferralsResponseModel {
  bool? status;
  String? message;
  List<ReferralData>? data;

  ReferralsResponseModel({this.status, this.message, this.data});

  ReferralsResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : (json["data"] as List).map((e) => ReferralData.fromJson(e)).toList();
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

class ReferralData {
  String? fullname;
  String? email;

  ReferralData({this.fullname, this.email});

  ReferralData.fromJson(Map<String, dynamic> json) {
    fullname = json["fullname"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["fullname"] = fullname;
    _data["email"] = email;
    return _data;
  }
}