class AppConstants {
  // API Configuration
  static const String baseUrl = 'https://api.bisalazhar.edu.eg'; // Replace with actual API URL
  
  // App Info
  static const String appName = 'BIS Alazhar';
  static const String appVersion = '1.0.0';
  
  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userIdKey = 'user_id';
  
  // Academic Years
  static const List<String> academicYears = [
    'First Year',
    'Second Year',
    'Third Year',
    'Fourth Year',
  ];
  
  // Terms
  static const List<String> terms = [
    'Fall',
    'Spring',
  ];
  
  // Days of Week
  static const List<String> daysOfWeek = [
    'Saturday',
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
  ];
  
  // Avatar Types
  static const List<String> avatarTypes = [
    'male',
    'female',
    'custom',
  ];
  
  // Colors
  static const int primaryColor = 0xFF1976D2;
  static const int secondaryColor = 0xFF0D47A1;
  static const int accentColor = 0xFF42A5F5;
  
  // Regex Patterns
  static const String universityIdPattern = r'^[0-9]{8,12}$';
  static const String passwordPattern = r'^.{6,}$';
}
