import 'grade.dart';

class Student {
  final int id;
  String name;
  int age;
  List<Grade> grades; // Danh sách điểm

  Student({
    required this.id,
    required this.name,
    required this.age,
    this.grades = const [], // Khởi tạo danh sách điểm rỗng
  });

  // Convert Student object to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'grades': grades.map((grade) => grade.toMap()).toList(),
    };
  }

  // Create Student object from Map
  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      age: map['age'],
      grades: (map['grades'] as List)
          .map((gradeMap) => Grade.fromMap(gradeMap))
          .toList(),
    );
  }
}
