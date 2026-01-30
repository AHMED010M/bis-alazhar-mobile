class UserModel {
  final String id;
  final String universityId;
  final String fullName;
  final String avatarType;
  final String? email;
  final String? phone;
  
  UserModel({
    required this.id,
    required this.universityId,
    required this.fullName,
    required this.avatarType,
    this.email,
    this.phone,
  });
  
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      universityId: json['university_id'],
      fullName: json['full_name'],
      avatarType: json['avatar_type'],
      email: json['email'],
      phone: json['phone'],
    );
  }
  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'university_id': universityId,
      'full_name': fullName,
      'avatar_type': avatarType,
      'email': email,
      'phone': phone,
    };
  }
}
