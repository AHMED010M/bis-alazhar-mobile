class SubjectModel {
  final String id;
  final String name;
  final String year;
  final String term;
  final String? description;
  
  SubjectModel({
    required this.id,
    required this.name,
    required this.year,
    required this.term,
    this.description,
  });
  
  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    return SubjectModel(
      id: json['id'].toString(),
      name: json['name'],
      year: json['year'],
      term: json['term'],
      description: json['description'],
    );
  }
}
