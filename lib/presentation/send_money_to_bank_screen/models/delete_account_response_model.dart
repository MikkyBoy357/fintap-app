class DeleteAccountResponseModel {
   String? message;
   bool? status;

  DeleteAccountResponseModel({this.message, this.status});

  DeleteAccountResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }
}