class LoginModel {
  final bool status;
  final String message;
  final Data data;

  LoginModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  final String token;
  final User user;

  Data({
    required this.token,
    required this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json["token"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "user": user.toJson(),
  };
}

class User {
  final int id;
  final String name;
  final String phone;
  final String identityNumber;
  final String image;
  final int orderCount;

  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.identityNumber,
    required this.image,
    required this.orderCount,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    phone: json["phone"],
    identityNumber: json["identity_number"],
    image: json["image"],
    orderCount: json["order_count"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "phone": phone,
    "identity_number": identityNumber,
    "image": image,
    "order_count": orderCount,
  };
}
