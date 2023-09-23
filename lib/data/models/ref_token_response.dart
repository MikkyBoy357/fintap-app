
class RefreshTokenResponse {
  bool? status;
  String? message;
  String? accessToken;
  String? refreshToken;

  RefreshTokenResponse({this.status, this.message, this.accessToken, this.refreshToken});

  RefreshTokenResponse.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    accessToken = json["access_token"];
    refreshToken = json["refresh_token"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    _data["access_token"] = accessToken;
    _data["refresh_token"] = refreshToken;
    return _data;
  }
}