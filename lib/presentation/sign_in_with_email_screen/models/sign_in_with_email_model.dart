class SignInWithEmailModel { 

  SignInWithEmailModel({
    required this.status,
    required this.message,
  this.accessToken,
    this.refreshToken,
  });

  final bool status;
  final String message;
  final String? accessToken;
  final String? refreshToken;

  factory SignInWithEmailModel.fromJson(Map<String, dynamic> json) {
    return SignInWithEmailModel(
      status: json['status'],
      message: json['message'],
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
    );
  }

  @override
  String toString() {
    return 'SignInWithEmailModel{status: $status, message: $message, accessToken: $accessToken, refreshToken: $refreshToken}';
  }
}
