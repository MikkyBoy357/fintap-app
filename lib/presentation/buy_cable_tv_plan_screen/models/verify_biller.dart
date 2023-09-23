class VerifyBillerModel {
  bool? status;
  String? message;
  BillerData? data;

  VerifyBillerModel({this.status, this.message, this.data});

  VerifyBillerModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : BillerData.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class BillerData {
  String? customerName;
  String? status;
  String? dueDate;
  String? customerNumber;
  String? customerType;
  String? currentBouquet;
  String? currentBouquetCode;
  String? renewalAmount;

  BillerData(
      {this.customerName,
      this.status,
      this.dueDate,
      this.customerNumber,
      this.customerType,
      this.currentBouquet,
      this.currentBouquetCode,
      this.renewalAmount});

  BillerData.fromJson(Map<String, dynamic> json) {
    customerName = json["Customer_Name"];
    status = json["Status"];
    dueDate = json["Due_Date"];
    customerNumber = json["Customer_Number"].toString();
    customerType = json["Customer_Type"];
    currentBouquet = json["Current_Bouquet"];
    currentBouquetCode = json["Current_Bouquet_Code"];
    renewalAmount = json["Renewal_Amount"].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Customer_Name"] = customerName;
    _data["Status"] = status;
    _data["Due_Date"] = dueDate;
    _data["Customer_Number"] = customerNumber;
    _data["Customer_Type"] = customerType;
    _data["Current_Bouquet"] = currentBouquet;
    _data["Current_Bouquet_Code"] = currentBouquetCode;
    _data["Renewal_Amount"] = renewalAmount;
    return _data;
  }
}
