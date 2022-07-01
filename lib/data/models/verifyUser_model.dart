// To parse this JSON data, do
//
//     final verifyUser = verifyUserFromJson(jsonString);

import 'dart:convert';

VerifyUser verifyUserFromJson(String str) =>
    VerifyUser.fromJson(json.decode(str));

String verifyUserToJson(VerifyUser data) => json.encode(data.toJson());

class VerifyUser {
  VerifyUser({
    this.status,
    this.message,
    this.data,
    this.home,
    this.step,
    this.type,
    this.unreadNotification,
  });

  int? status;
  String? message;
  Data? data;
  dynamic home;
  int? step;
  String? type;
  int? unreadNotification;

  factory VerifyUser.fromJson(Map<String, dynamic> json) => VerifyUser(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        home: json["home"],
        step: json["step"],
        type: json["type"],
        unreadNotification: json["unread_notification"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
        "home": home,
        "step": step,
        "type": type,
        "unread_notification": unreadNotification,
      };
}

class Data {
  Data({
    this.id,
    this.firstName,
    this.lastName,
    this.bio,
    this.name,
    this.phoneCode,
    this.mobile,
    this.email,
    this.gender,
    this.intersted,
    this.height,
    this.ethnicity,
    this.children,
    this.eductionQualification,
    this.religious,
    this.zodiac,
    this.drinking,
    this.smoke,
    this.address,
    this.city,
    this.state,
    this.country,
    this.lat,
    this.lng,
    this.dob,
    this.userImage,
    this.userIntersest,
    this.userQuestion,
    this.plan,
    this.devices,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? bio;
  String? name;
  String? phoneCode;
  String? mobile;
  String? email;
  String? gender;
  String? intersted;
  String? height;
  String? ethnicity;
  String? children;
  String? eductionQualification;
  String? religious;
  String? zodiac;
  String? drinking;
  String? smoke;
  String? address;
  String? city;
  String? state;
  String? country;
  String? lat;
  String? lng;
  String? dob;
  List<dynamic>? userImage;
  List<dynamic>? userIntersest;
  List<dynamic>? userQuestion;
  String? plan;
  List<Device>? devices;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        bio: json["bio"],
        name: json["name"],
        phoneCode: json["phone_code"],
        mobile: json["mobile"],
        email: json["email"],
        gender: json["gender"],
        intersted: json["intersted"],
        height: json["height"],
        ethnicity: json["ethnicity"],
        children: json["children"],
        eductionQualification: json["eduction_qualification"],
        religious: json["religious"],
        zodiac: json["zodiac"],
        drinking: json["drinking"],
        smoke: json["smoke"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        lat: json["lat"],
        lng: json["lng"],
        dob: json["dob"],
        userImage: List<dynamic>.from(json["user_image"].map((x) => x)),
        userIntersest: List<dynamic>.from(json["user_intersest"].map((x) => x)),
        userQuestion: List<dynamic>.from(json["user_question"].map((x) => x)),
        plan: json["plan"],
        devices:
            List<Device>.from(json["devices"].map((x) => Device.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "bio": bio,
        "name": name,
        "phone_code": phoneCode,
        "mobile": mobile,
        "email": email,
        "gender": gender,
        "intersted": intersted,
        "height": height,
        "ethnicity": ethnicity,
        "children": children,
        "eduction_qualification": eductionQualification,
        "religious": religious,
        "zodiac": zodiac,
        "drinking": drinking,
        "smoke": smoke,
        "address": address,
        "city": city,
        "state": state,
        "country": country,
        "lat": lat,
        "lng": lng,
        "dob": dob,
        "user_image": List<dynamic>.from(userImage!.map((x) => x)),
        "user_intersest": List<dynamic>.from(userIntersest!.map((x) => x)),
        "user_question": List<dynamic>.from(userQuestion!.map((x) => x)),
        "plan": plan,
        "devices": List<dynamic>.from(devices!.map((x) => x.toJson())),
      };
}

class Device {
  Device({
    this.id,
    this.userId,
    this.deviceId,
    this.deviceToken,
    this.deviceType,
    this.deviceSdk,
    this.deviceManufacture,
    this.deviceBrand,
    this.deviceUser,
    this.deviceBase,
    this.deviceIncremental,
    this.deviceBoard,
    this.deviceHost,
    this.deviceFinger,
    this.deviceVersion,
    this.deviceName,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? userId;
  String? deviceId;
  String? deviceToken;
  String? deviceType;
  dynamic deviceSdk;
  dynamic deviceManufacture;
  dynamic deviceBrand;
  dynamic deviceUser;
  dynamic deviceBase;
  dynamic deviceIncremental;
  dynamic deviceBoard;
  dynamic deviceHost;
  dynamic deviceFinger;
  dynamic deviceVersion;
  dynamic deviceName;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Device.fromJson(Map<String, dynamic> json) => Device(
        id: json["id"],
        userId: json["user_id"],
        deviceId: json["device_id"],
        deviceToken: json["device_token"],
        deviceType: json["device_type"],
        deviceSdk: json["device_sdk"],
        deviceManufacture: json["device_manufacture"],
        deviceBrand: json["device_brand"],
        deviceUser: json["device_user"],
        deviceBase: json["device_base"],
        deviceIncremental: json["device_incremental"],
        deviceBoard: json["device_board"],
        deviceHost: json["device_host"],
        deviceFinger: json["device_finger"],
        deviceVersion: json["device_version"],
        deviceName: json["device_name"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "device_id": deviceId,
        "device_token": deviceToken,
        "device_type": deviceType,
        "device_sdk": deviceSdk,
        "device_manufacture": deviceManufacture,
        "device_brand": deviceBrand,
        "device_user": deviceUser,
        "device_base": deviceBase,
        "device_incremental": deviceIncremental,
        "device_board": deviceBoard,
        "device_host": deviceHost,
        "device_finger": deviceFinger,
        "device_version": deviceVersion,
        "device_name": deviceName,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
