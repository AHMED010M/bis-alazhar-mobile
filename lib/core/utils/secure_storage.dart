import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:bis_alazhar/core/constants/app_constants.dart';

class SecureStorage {
  static const _storage = FlutterSecureStorage();
  
  // Token Management
  static Future<void> saveToken(String token) async {
    await _storage.write(key: AppConstants.tokenKey, value: token);
  }
  
  static Future<String?> getToken() async {
    return await _storage.read(key: AppConstants.tokenKey);
  }
  
  static Future<void> deleteToken() async {
    await _storage.delete(key: AppConstants.tokenKey);
  }
  
  // User ID Management
  static Future<void> saveUserId(String userId) async {
    await _storage.write(key: AppConstants.userIdKey, value: userId);
  }
  
  static Future<String?> getUserId() async {
    return await _storage.read(key: AppConstants.userIdKey);
  }
  
  static Future<void> deleteUserId() async {
    await _storage.delete(key: AppConstants.userIdKey);
  }
  
  // Clear All
  static Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
