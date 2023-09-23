class CreateNewPasswordModel { 
  final bool status;
  final String message;

  const CreateNewPasswordModel({
    required this.status,
    required this.message,
  });

  factory CreateNewPasswordModel.fromJson(Map<String, dynamic> json) {
    return CreateNewPasswordModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
