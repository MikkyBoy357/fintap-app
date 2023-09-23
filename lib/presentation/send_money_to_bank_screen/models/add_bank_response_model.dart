class AddAccountResponseModel {
   String? message;
   bool? status;

  AddAccountResponseModel({this.message, this.status});

  AddAccountResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }
}

class UpdateAccountResponseModel {
   String? message;
   bool? status;

  UpdateAccountResponseModel({this.message, this.status});

  UpdateAccountResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }
}