class NoteModel {
  final String id;
  final String subjectName;
  final String description;
  final double price;
  final String? imageUrl;
  
  NoteModel({
    required this.id,
    required this.subjectName,
    required this.description,
    required this.price,
    this.imageUrl,
  });
  
  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      id: json['id'].toString(),
      subjectName: json['subject_name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      imageUrl: json['image_url'],
    );
  }
}
