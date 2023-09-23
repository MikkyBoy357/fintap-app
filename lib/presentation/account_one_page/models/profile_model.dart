
class Account {
  bool? status;
  String? message;
  Data? data;

  Account({this.status, this.message, this.data});

  Account.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  List<Profile>? profile;
  List<Wallet>? wallet;

  Data({this.profile, this.wallet});

  Data.fromJson(Map<String, dynamic> json) {
    profile = json["profile"] == null ? null : (json["profile"] as List).map((e) => Profile.fromJson(e)).toList();
    wallet = json["wallet"] == null ? null : (json["wallet"] as List).map((e) => Wallet.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(profile != null) {
      _data["profile"] = profile?.map((e) => e.toJson()).toList();
    }
    if(wallet != null) {
      _data["wallet"] = wallet?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Wallet {
  String? id;
  String? userid;
  String? mainBalance;
  String? bookBalance;
  String? vaultBalance;
  String? createdAt;
  String? updatedAt;

  Wallet({this.id, this.userid, this.mainBalance, this.bookBalance, this.vaultBalance, this.createdAt, this.updatedAt});

  Wallet.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userid = json["userid"];
    mainBalance = json["main_balance"];
    bookBalance = json["book_balance"];
    vaultBalance = json["vault_balance"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["userid"] = userid;
    _data["main_balance"] = mainBalance;
    _data["book_balance"] = bookBalance;
    _data["vault_balance"] = vaultBalance;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class Profile {
  String? id;
  String? firstname;
  String? lastname;
  String? phone;
  String? email;
  String? refCode;
  String? refBy;
  String? emailVerified;
  String? phoneVerified;
  String? kycVerified;
  String? createdAt;
  String? updatedAt;

  Profile({this.id, this.firstname, this.lastname, this.phone, this.email, this.refCode, this.refBy, this.emailVerified, this.phoneVerified, this.kycVerified, this.createdAt, this.updatedAt});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    firstname = json["firstname"];
    lastname = json["lastname"];
    phone = json["phone"];
    email = json["email"];
    refCode = json["ref_code"];
    refBy = json["ref_by"];
    emailVerified = json["email_verified"];
    phoneVerified = json["phone_verified"];
    kycVerified = json["kyc_verified"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["firstname"] = firstname;
    _data["lastname"] = lastname;
    _data["phone"] = phone;
    _data["email"] = email;
    _data["ref_code"] = refCode;
    _data["ref_by"] = refBy;
    _data["email_verified"] = emailVerified;
    _data["phone_verified"] = phoneVerified;
    _data["kyc_verified"] = kycVerified;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}