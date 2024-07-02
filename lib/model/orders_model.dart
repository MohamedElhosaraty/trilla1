import 'dart:convert';

OrdersModel ordersModelFromJson(String str) =>
    OrdersModel.fromJson(json.decode(str));

class OrdersModel {
  final bool status;
  final String message;
  final List<OrdersDataList> data;

  OrdersModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory OrdersModel.fromJson(Map<String, dynamic> json) => OrdersModel(
        status: json["status"],
        message: json["message"],
        data: List<OrdersDataList>.from(
            json["data"].map((x) => OrdersDataList.fromJson(x))),
      );
}

class OrdersDataList {
  final int id;
  final String title;
  final String weight;
  final String car;
  final String phone;
  final DateTime date;
  final String time;
  final String note;
  final String status;
  final String loadStreet;
  final String loadCity;
  final String loadRegion;
  final String loadState;
  final String loadBuildingNumber;
  final String loadLat;
  final String loadLng;
  final String deliveryStreet;
  final String deliveryCity;
  final String deliveryRegion;
  final String deliveryState;
  final String deliveryBuildingNumber;
  final String deliveryLat;
  final String deliveryLng;
  final String price;

  OrdersDataList({
    required this.id,
    required this.title,
    required this.weight,
    required this.car,
    required this.phone,
    required this.date,
    required this.time,
    required this.note,
    required this.status,
    required this.loadStreet,
    required this.loadCity,
    required this.loadRegion,
    required this.loadState,
    required this.loadBuildingNumber,
    required this.loadLat,
    required this.loadLng,
    required this.deliveryStreet,
    required this.deliveryCity,
    required this.deliveryRegion,
    required this.deliveryState,
    required this.deliveryBuildingNumber,
    required this.deliveryLat,
    required this.deliveryLng,
    required this.price,
  });

  factory OrdersDataList.fromJson(Map<String, dynamic> json) => OrdersDataList(
        id: json["id"],
        title: json["title"],
        weight: json["weight"],
        car: json["car"],
        phone: json["phone"],
        date: DateTime.parse(json["date"]),
        time: json["time"],
        note: json["note"],
        status: json["status"],
        loadStreet: json["load_street"],
        loadCity: json["load_city"],
        loadRegion: json["load_region"],
        loadState: json["load_state"],
        loadBuildingNumber: json["load_building_number"],
        loadLat: json["load_lat"],
        loadLng: json["load_lng"],
        deliveryStreet: json["delivery_street"],
        deliveryCity: json["delivery_city"],
        deliveryRegion: json["delivery_region"],
        deliveryState: json["delivery_state"],
        deliveryBuildingNumber: json["delivery_building_number"],
        deliveryLat: json["delivery_lat"],
        deliveryLng: json["delivery_lng"],
        price: json["price"],
      );
}
