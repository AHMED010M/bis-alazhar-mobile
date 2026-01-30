import 'package:dio/dio.dart';
import 'package:bis_alazhar/core/constants/app_constants.dart';
import 'package:bis_alazhar/core/utils/secure_storage.dart';

class ApiClient {
  late final Dio _dio;
  
  ApiClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SecureStorage.getToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (error, handler) {
          _handleError(error);
          return handler.next(error);
        },
      ),
    );
  }
  
  void _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw Exception('Connection timeout');
      case DioExceptionType.badResponse:
        throw Exception('Server error: ${error.response?.statusCode}');
      case DioExceptionType.cancel:
        throw Exception('Request cancelled');
      default:
        throw Exception('Network error');
    }
  }
  
  // Authentication
  Future<Map<String, dynamic>> login(String universityId, String password) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'university_id': universityId,
          'password': password,
        },
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
  
  Future<Map<String, dynamic>> register({
    required String universityId,
    required String fullName,
    required String password,
    required String avatarType,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/register',
        data: {
          'university_id': universityId,
          'full_name': fullName,
          'password': password,
          'avatar_type': avatarType,
        },
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
  
  // Study
  Future<List<dynamic>> getSchedule() async {
    final response = await _dio.get('/study/schedule');
    return response.data;
  }
  
  Future<List<dynamic>> getSubjects() async {
    final response = await _dio.get('/study/subjects');
    return response.data;
  }
  
  Future<List<dynamic>> getFiles(String subjectId) async {
    final response = await _dio.get('/study/files?subject_id=$subjectId');
    return response.data;
  }
  
  // Notes
  Future<List<dynamic>> getNotes() async {
    final response = await _dio.get('/notes');
    return response.data;
  }
  
  Future<Map<String, dynamic>> orderNote(String noteId) async {
    final response = await _dio.post('/notes/order', data: {'note_id': noteId});
    return response.data;
  }
  
  // Forum
  Future<List<dynamic>> getForumSubs() async {
    final response = await _dio.get('/forum/subs');
    return response.data;
  }
  
  Future<List<dynamic>> getForumPosts(String? subId) async {
    final response = await _dio.get('/forum/posts${subId != null ? '?sub_id=$subId' : ''}');
    return response.data;
  }
  
  Future<Map<String, dynamic>> createPost({
    required String title,
    required String content,
    String? subId,
  }) async {
    final response = await _dio.post('/forum/posts', data: {
      'title': title,
      'content': content,
      'sub_id': subId,
    });
    return response.data;
  }
  
  Future<List<dynamic>> getComments(String postId) async {
    final response = await _dio.get('/forum/comments?post_id=$postId');
    return response.data;
  }
  
  Future<Map<String, dynamic>> createComment(String postId, String content) async {
    final response = await _dio.post('/forum/comments', data: {
      'post_id': postId,
      'content': content,
    });
    return response.data;
  }
  
  Future<void> upvotePost(String postId) async {
    await _dio.post('/forum/posts/$postId/upvote');
  }
  
  // User & Notifications
  Future<Map<String, dynamic>> getMe() async {
    final response = await _dio.get('/me');
    return response.data;
  }
  
  Future<Map<String, dynamic>> updateMe(Map<String, dynamic> data) async {
    final response = await _dio.put('/me', data: data);
    return response.data;
  }
  
  Future<List<dynamic>> getNotifications() async {
    final response = await _dio.get('/notifications');
    return response.data;
  }
  
  Future<void> markNotificationRead(String notificationId) async {
    await _dio.post('/notifications/$notificationId/read');
  }
}
