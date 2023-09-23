class WithdrawInvestmentResponse{
  bool? success;
  String? message;

  WithdrawInvestmentResponse({this.success, this.message});

  WithdrawInvestmentResponse.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    message = json["message"];
  }
}