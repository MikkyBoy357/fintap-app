class FintapServicesModel {
  final bool? status;
  final String? message;
  Data? data;

  FintapServicesModel({this.status, this.message, this.data});

  factory FintapServicesModel.fromJson(Map<String, dynamic> json) {
    // status = json["status"];
    // message = json["message"];
    // data = json["data"] == null ? null : Data.fromJson(json["data"]);
    return FintapServicesModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
    );
  }
}

class Data {
  List<Airtime>? airtime;
  List<Data1>? data;
  List<Electricity>? electricity;
  List<CableTv>? cableTv;

  Data({this.airtime, this.data, this.electricity, this.cableTv});

  Data.fromJson(Map<String, dynamic> json) {
    airtime = json["airtime"] == null
        ? null
        : (json["airtime"] as List).map((e) => Airtime.fromJson(e)).toList();
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data1.fromJson(e)).toList();
    electricity = json["electricity"] == null
        ? null
        : (json["electricity"] as List)
            .map((e) => Electricity.fromJson(e))
            .toList();
    cableTv = json["cable-tv"] == null
        ? null
        : (json["cable-tv"] as List).map((e) => CableTv.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (airtime != null) {
      _data["airtime"] = airtime?.map((e) => e.toJson()).toList();
    }
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    if (electricity != null) {
      _data["electricity"] = electricity?.map((e) => e.toJson()).toList();
    }
    if (cableTv != null) {
      _data["cable-tv"] = cableTv?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class CableTv {
  String? serviceId;
  String? name;
  String? minimiumAmount;
  int? maximumAmount;
  int? convinienceFee;
  int? commision;
  List<Variations2>? variations;
  String? productType;
  String? image;

  CableTv(
      {this.serviceId,
      this.name,
      this.minimiumAmount,
      this.maximumAmount,
      this.convinienceFee,
      this.commision,
      this.variations,
      this.productType,
      this.image});

  CableTv.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    minimiumAmount = json["minimium_amount"];
    maximumAmount = json["maximum_amount"];
    convinienceFee = json["convinience_fee"];
    commision = json["commision"];
    variations = json["variations"] == null
        ? null
        : (json["variations"] as List)
            .map((e) => Variations2.fromJson(e))
            .toList();
    productType = json["product_type"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["serviceID"] = serviceId;
    _data["name"] = name;
    _data["minimium_amount"] = minimiumAmount;
    _data["maximum_amount"] = maximumAmount;
    _data["convinience_fee"] = convinienceFee;
    _data["commision"] = commision;
    if (variations != null) {
      _data["variations"] = variations?.map((e) => e.toJson()).toList();
    }
    _data["product_type"] = productType;
    _data["image"] = image;
    return _data;
  }
}

class Variations2 {
  String? variationCode;
  String? name;
  String? variationAmount;
  String? fixedPrice;

  Variations2(
      {this.variationCode, this.name, this.variationAmount, this.fixedPrice});

  Variations2.fromJson(Map<String, dynamic> json) {
    variationCode = json["variation_code"];
    name = json["name"];
    variationAmount = json["variation_amount"];
    fixedPrice = json["fixedPrice"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["variation_code"] = variationCode;
    _data["name"] = name;
    _data["variation_amount"] = variationAmount;
    _data["fixedPrice"] = fixedPrice;
    return _data;
  }
}

class Electricity {
  String? serviceId;
  String? name;
  String? minimiumAmount;
  int? maximumAmount;
  int? convinienceFee;
  int? commision;
  List<Variations1>? variations;
  String? productType;
  String? image;

  Electricity(
      {this.serviceId,
      this.name,
      this.minimiumAmount,
      this.maximumAmount,
      this.convinienceFee,
      this.commision,
      this.variations,
      this.productType,
      this.image});

  Electricity.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    minimiumAmount = json["minimium_amount"];
    maximumAmount = json["maximum_amount"];
    convinienceFee = json["convinience_fee"];
    commision = json["commision"];
    variations = json["variations"] == null
        ? null
        : (json["variations"] as List)
            .map((e) => Variations1.fromJson(e))
            .toList();
    productType = json["product_type"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["serviceID"] = serviceId;
    _data["name"] = name;
    _data["minimium_amount"] = minimiumAmount;
    _data["maximum_amount"] = maximumAmount;
    _data["convinience_fee"] = convinienceFee;
    _data["commision"] = commision;
    if (variations != null) {
      _data["variations"] = variations?.map((e) => e.toJson()).toList();
    }
    _data["product_type"] = productType;
    _data["image"] = image;
    return _data;
  }
}

class Variations1 {
  String? variationCode;
  String? name;
  String? variationAmount;
  String? fixedPrice;

  Variations1(
      {this.variationCode, this.name, this.variationAmount, this.fixedPrice});

  Variations1.fromJson(Map<String, dynamic> json) {
    variationCode = json["variation_code"];
    name = json["name"];
    variationAmount = json["variation_amount"];
    fixedPrice = json["fixedPrice"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["variation_code"] = variationCode;
    _data["name"] = name;
    _data["variation_amount"] = variationAmount;
    _data["fixedPrice"] = fixedPrice;
    return _data;
  }
}

class Data1 {
  String? serviceId;
  String? name;
  String? minimiumAmount;
  int? maximumAmount;
  int? convinienceFee;
  int? commision;
  List<Variations>? variations;
  String? image;

  Data1(
      {this.serviceId,
      this.name,
      this.minimiumAmount,
      this.maximumAmount,
      this.convinienceFee,
      this.commision,
      this.variations,
      this.image});

  Data1.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    minimiumAmount = json["minimium_amount"];
    maximumAmount = json["maximum_amount"];
    convinienceFee = json["convinience_fee"];
    commision = json["commision"];
    variations = json["variations"] == null
        ? null
        : (json["variations"] as List)
            .map((e) => Variations.fromJson(e))
            .toList();
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["serviceID"] = serviceId;
    _data["name"] = name;
    _data["minimium_amount"] = minimiumAmount;
    _data["maximum_amount"] = maximumAmount;
    _data["convinience_fee"] = convinienceFee;
    _data["commision"] = commision;
    if (variations != null) {
      _data["variations"] = variations?.map((e) => e.toJson()).toList();
    }
    _data["image"] = image;
    return _data;
  }
}

class Variations {
  String? variationCode;
  String? name;
  String? variationAmount;
  String? fixedPrice;

  Variations(
      {this.variationCode, this.name, this.variationAmount, this.fixedPrice});

  Variations.fromJson(Map<String, dynamic> json) {
    variationCode = json["variation_code"];
    name = json["name"];
    variationAmount = json["variation_amount"];
    fixedPrice = json["fixedPrice"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["variation_code"] = variationCode;
    _data["name"] = name;
    _data["variation_amount"] = variationAmount;
    _data["fixedPrice"] = fixedPrice;
    return _data;
  }
}

class Airtime {
  String? serviceId;
  String? name;
  String? minimiumAmount;
  int? maximumAmount;
  int? convinienceFee;
  int? commision;
  String? image;

  Airtime(
      {this.serviceId,
      this.name,
      this.minimiumAmount,
      this.maximumAmount,
      this.convinienceFee,
      this.commision,
      this.image});

  Airtime.fromJson(Map<String, dynamic> json) {
    serviceId = json["serviceID"];
    name = json["name"];
    minimiumAmount = json["minimium_amount"].toString();
    maximumAmount = json["maximum_amount"];
    convinienceFee = json["convinience_fee"];
    commision = json["commision"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["serviceID"] = serviceId;
    _data["name"] = name;
    _data["minimium_amount"] = minimiumAmount;
    _data["maximum_amount"] = maximumAmount;
    _data["convinience_fee"] = convinienceFee;
    _data["commision"] = commision;
    _data["image"] = image;
    return _data;
  }
}
