class CardModel {
  String? id;
  String? cardType;
  String? cardBrand;
  String? currency;
  String? expiryMonth;
  String? expiryYear;
  String? maskedPan;
  String? cardStatus;
  SpendingControls? spendingControls;

  CardModel(
      {this.id,
      this.cardType,
      this.cardBrand,
      this.currency,
      this.expiryMonth,
      this.expiryYear,
      this.maskedPan,
      this.cardStatus,
      this.spendingControls});

  CardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cardType = json['card_type'];
    cardBrand = json['card_brand'];
    currency = json['currency'];
    expiryMonth = json['expiry_month'];
    expiryYear = json['expiry_year'];
    maskedPan = json['masked_pan'];
    cardStatus = json['card_status'];
    spendingControls = json['spendingControls'] != null
        ? new SpendingControls.fromJson(json['spendingControls'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['card_type'] = this.cardType;
    data['card_brand'] = this.cardBrand;
    data['currency'] = this.currency;
    data['expiry_month'] = this.expiryMonth;
    data['expiry_year'] = this.expiryYear;
    data['masked_pan'] = this.maskedPan;
    data['card_status'] = this.cardStatus;
    if (this.spendingControls != null) {
      data['spendingControls'] = this.spendingControls!.toJson();
    }
    return data;
  }
}

class SpendingControls {
  List<String>? allowedCategories;
  List<String>? blockedCategories;
  Channels? channels;
  List<SpendingLimits>? spendingLimits;

  SpendingControls(
      {this.allowedCategories,
      this.blockedCategories,
      this.channels,
      this.spendingLimits});

  SpendingControls.fromJson(Map<String, dynamic> json) {
    allowedCategories = json['allowedCategories'].cast<String>();
    blockedCategories = json['blockedCategories'].cast<String>();
    channels = json['channels'] != null
        ? new Channels.fromJson(json['channels'])
        : null;
    if (json['spendingLimits'] != null) {
      spendingLimits = <SpendingLimits>[];
      json['spendingLimits'].forEach((v) {
        spendingLimits!.add(new SpendingLimits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['allowedCategories'] = this.allowedCategories;
    data['blockedCategories'] = this.blockedCategories;
    if (this.channels != null) {
      data['channels'] = this.channels!.toJson();
    }
    if (this.spendingLimits != null) {
      data['spendingLimits'] =
          this.spendingLimits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Channels {
  bool? atm;
  bool? pos;
  bool? web;
  bool? mobile;

  Channels({this.atm, this.pos, this.web, this.mobile});

  Channels.fromJson(Map<String, dynamic> json) {
    atm = json['atm'];
    pos = json['pos'];
    web = json['web'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['atm'] = this.atm;
    data['pos'] = this.pos;
    data['web'] = this.web;
    data['mobile'] = this.mobile;
    return data;
  }
}

class SpendingLimits {
  int? amount;
  String? interval;

  SpendingLimits({this.amount, this.interval});

  SpendingLimits.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    interval = json['interval'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['interval'] = this.interval;
    return data;
  }
}
