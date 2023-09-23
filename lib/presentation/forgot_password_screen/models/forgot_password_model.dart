class ForgotPasswordModel {
  final bool status;
  final String message;
  final String? resetToken;

  const ForgotPasswordModel(
      {required this.status, required this.message, this.resetToken});

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    return ForgotPasswordModel(
      status: json['status'],
      message: json['message'],
      resetToken: json['reset_token'],
    );
  }

  @override
  String toString() {
    return 'ForgotPasswordModel{status: $status, message: $message, resetToken: $resetToken}';
  }
}
