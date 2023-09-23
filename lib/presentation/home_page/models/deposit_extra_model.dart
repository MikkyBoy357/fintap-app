
// ignore_for_file: empty_constructor_bodies

class DepositExtra {
  EventData? eventData;
  String? eventType;
  String? charge;

  DepositExtra({this.eventData, this.eventType, this.charge});

  DepositExtra.fromJson(Map<String, dynamic> json) {
    eventData = json["eventData"] == null ? null : EventData.fromJson(json["eventData"]);
    eventType = json["eventType"];
    charge = json["charge"].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(eventData != null) {
      _data["eventData"] = eventData?.toJson();
    }
    _data["eventType"] = eventType;
    _data["charge"] = charge;
    return _data;
  }
}

class EventData {
  Product? product;
  String? transactionReference;
  String? paymentReference;
  String? paidOn;
  String? paymentDescription;
  MetaData? metaData;
  List<PaymentSourceInformation>? paymentSourceInformation;
  DestinationAccountInformation? destinationAccountInformation;
  String? amountPaid;
  String? totalPayable;
  CardDetails? cardDetails;
  String? paymentMethod;
  String? currency;
  String? settlementAmount;
  String? paymentStatus;
  Customer? customer;

  EventData({this.product, this.transactionReference, this.paymentReference, this.paidOn, this.paymentDescription, this.metaData, this.paymentSourceInformation, this.destinationAccountInformation, this.amountPaid, this.totalPayable, this.cardDetails, this.paymentMethod, this.currency, this.settlementAmount, this.paymentStatus, this.customer});

  EventData.fromJson(Map<String, dynamic> json) {
    product = json["product"] == null ? null : Product.fromJson(json["product"]);
    transactionReference = json["transactionReference"];
    paymentReference = json["paymentReference"];
    paidOn = json["paidOn"];
    paymentDescription = json["paymentDescription"];
    metaData = json["metaData"] == null ? null : MetaData.fromJson(json["metaData"]);
    paymentSourceInformation = json["paymentSourceInformation"] == null ? null : (json["paymentSourceInformation"] as List).map((e) => PaymentSourceInformation.fromJson(e)).toList();
    destinationAccountInformation = json["destinationAccountInformation"] == null ? null : DestinationAccountInformation.fromJson(json["destinationAccountInformation"]);
    amountPaid = json["amountPaid"].toString();
    totalPayable = json["totalPayable"].toString();
    cardDetails = json["cardDetails"] == null ? null : CardDetails.fromJson(json["cardDetails"]);
    paymentMethod = json["paymentMethod"];
    currency = json["currency"];
    settlementAmount = json["settlementAmount"];
    paymentStatus = json["paymentStatus"];
    customer = json["customer"] == null ? null : Customer.fromJson(json["customer"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(product != null) {
      _data["product"] = product?.toJson();
    }
    _data["transactionReference"] = transactionReference;
    _data["paymentReference"] = paymentReference;
    _data["paidOn"] = paidOn;
    _data["paymentDescription"] = paymentDescription;
    if(metaData != null) {
      _data["metaData"] = metaData?.toJson();
    }
    if(paymentSourceInformation != null) {
      _data["paymentSourceInformation"] = paymentSourceInformation?.map((e) => e.toJson()).toList();
    }
    if(destinationAccountInformation != null) {
      _data["destinationAccountInformation"] = destinationAccountInformation?.toJson();
    }
    _data["amountPaid"] = amountPaid;
    _data["totalPayable"] = totalPayable;
    if(cardDetails != null) {
      _data["cardDetails"] = cardDetails?.toJson();
    }
    _data["paymentMethod"] = paymentMethod;
    _data["currency"] = currency;
    _data["settlementAmount"] = settlementAmount;
    _data["paymentStatus"] = paymentStatus;
    if(customer != null) {
      _data["customer"] = customer?.toJson();
    }
    return _data;
  }
}

class Customer {
  String? name;
  String? email;

  Customer({this.name, this.email});

  Customer.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["email"] = email;
    return _data;
  }
}

class CardDetails {
  CardDetails();

  CardDetails.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class DestinationAccountInformation {
  String? bankCode;
  String? bankName;
  String? accountNumber;

  DestinationAccountInformation({this.bankCode, this.bankName, this.accountNumber});

  DestinationAccountInformation.fromJson(Map<String, dynamic> json) {
    bankCode = json["bankCode"];
    bankName = json["bankName"];
    accountNumber = json["accountNumber"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bankCode"] = bankCode;
    _data["bankName"] = bankName;
    _data["accountNumber"] = accountNumber;
    return _data;
  }
}

class PaymentSourceInformation {
  String? bankCode;
  String? amountPaid;
  String? accountName;
  String? sessionId;
  String? accountNumber;

  PaymentSourceInformation({this.bankCode, this.amountPaid, this.accountName, this.sessionId, this.accountNumber});

  PaymentSourceInformation.fromJson(Map<String, dynamic> json) {
    bankCode = json["bankCode"];
    amountPaid = json["amountPaid"].toString();
    accountName = json["accountName"];
    sessionId = json["sessionId"];
    accountNumber = json["accountNumber"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bankCode"] = bankCode;
    _data["amountPaid"] = amountPaid;
    _data["accountName"] = accountName;
    _data["sessionId"] = sessionId;
    _data["accountNumber"] = accountNumber;
    return _data;
  }
}

class MetaData {
  MetaData();

  MetaData.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Product {
  String? reference;
  String? type;

  Product({this.reference, this.type});

  Product.fromJson(Map<String, dynamic> json) {
    reference = json["reference"];
    type = json["type"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["reference"] = reference;
    _data["type"] = type;
    return _data;
  }
}