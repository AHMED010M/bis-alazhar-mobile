class ScheduleModel {
  final String id;
  final String subjectName;
  final String day;
  final String time;
  final String location;
  
  ScheduleModel({
    required this.id,
    required this.subjectName,
    required this.day,
    required this.time,
    required this.location,
  });
  
  factory ScheduleModel.fromJson(Map<String, dynamic> json) {
    return ScheduleModel(
      id: json['id'].toString(),
      subjectName: json['subject_name'],
      day: json['day'],
      time: json['time'],
      location: json['location'] ?? '',
    );
  }
}
