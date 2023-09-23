class VirtualBank {
  final bool? status;
  final String? message;
  final Data? data;

  VirtualBank({
     this.status,
     this.message,
     this.data,
  });

  factory VirtualBank.fromJson(Map<String, dynamic> json) {
    return VirtualBank(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
    );
  }

  @override
  String toString() {
    return 'VirtualBank(status: $status, message: $message, data: $data)';
  }
}

class Data {
  final String? id;
  final String? userId;
  final String? bankName;
  final String? accountName;
  final String? accountNumber;
  final String? reservationReference;
  final String? createdAt;
  final String? updatedAt;

  Data({
     this.id,
     this.userId,
     this.bankName,
     this.accountName,
     this.accountNumber,
     this.reservationReference,
     this.createdAt,
     this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      userId: json['userid'],
      bankName: json['bankName'],
      accountName: json['accountName'],
      accountNumber: json['accountNumber'],
      reservationReference: json['reservationReference'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  @override 
  String toString() {
    return 'Data(id: $id, userId: $userId, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber, reservationReference: $reservationReference, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
