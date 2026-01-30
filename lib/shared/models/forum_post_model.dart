class ForumPostModel {
  final String id;
  final String userId;
  final String userName;
  final String title;
  final String content;
  final int upvotesCount;
  final int commentsCount;
  final DateTime createdAt;
  final bool isUpvoted;
  
  ForumPostModel({
    required this.id,
    required this.userId,
    required this.userName,
    required this.title,
    required this.content,
    required this.upvotesCount,
    required this.commentsCount,
    required this.createdAt,
    this.isUpvoted = false,
  });
  
  factory ForumPostModel.fromJson(Map<String, dynamic> json) {
    return ForumPostModel(
      id: json['id'].toString(),
      userId: json['user_id'].toString(),
      userName: json['user_name'],
      title: json['title'],
      content: json['content'],
      upvotesCount: json['upvotes_count'] ?? 0,
      commentsCount: json['comments_count'] ?? 0,
      createdAt: DateTime.parse(json['created_at']),
      isUpvoted: json['is_upvoted'] ?? false,
    );
  }
}
