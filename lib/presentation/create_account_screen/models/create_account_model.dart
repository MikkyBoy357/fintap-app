// class CreateAccountModel { }
class CreateAccountModel {
  final bool status;
  final String message;
 

  const CreateAccountModel({
    required this.status,
    required this.message
  });

  factory CreateAccountModel.fromJson(Map<String, dynamic> json) {
    return CreateAccountModel(
      status: json['status'],
      message: json['message'],
     
    );
  }

 

  @override
  String toString() {
    return 'CreateAccountModel{status: $status, message: $message}';
  }
}
