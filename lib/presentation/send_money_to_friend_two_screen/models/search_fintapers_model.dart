
class SearchFintapersModel {
  bool? status;
  String? message;
  List<SearchData>? data;

  SearchFintapersModel({this.status, this.message, this.data});

  SearchFintapersModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : (json["data"] as List).map((e) => SearchData.fromJson(e)).toList();
  }

}

class SearchData {
  String? id;
  String? firstname;
  String? lastname;
  String? phone;
  String? email;

  SearchData({this.id, this.firstname, this.lastname, this.phone, this.email});

  SearchData.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    phone = json["phone"];
    email = json["email"];
  }

}