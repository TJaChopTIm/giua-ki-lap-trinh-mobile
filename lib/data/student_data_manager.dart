import '../models/student.dart';
import '../models/grade.dart';

class StudentDataManager {
  // Danh sách lưu trữ tất cả các sinh viên
  List<Student> students = [];

  // Thêm sinh viên mới
  void addStudent(String name, int age) {
    int newId = students.isEmpty ? 1 : students.last.id + 1;
    students.add(Student(id: newId, name: name, age: age));
  }

  // Sửa thông tin sinh viên
  void updateStudent(int id, String newName, int newAge) {
    // Tìm kiếm sinh viên trong danh sách
    Student? student;
    for (var s in students) {
      if (s.id == id) {
        student = s;
        break; // Nếu tìm thấy thì thoát khỏi vòng lặp
      }
    }

    // Nếu sinh viên tồn tại, cập nhật thông tin
    if (student != null) {
      student.name = newName;
      student.age = newAge;
    }
  }

  // Xóa sinh viên
  void deleteStudent(int id) {
    students.removeWhere((student) => student.id == id);
  }

  // Thêm điểm cho sinh viên
  void addGrade(int studentId, String subject, int score) {
    // Tìm kiếm sinh viên
    Student? student;
    for (var s in students) {
      if (s.id == studentId) {
        student = s;
        break;
      }
    }

    // Nếu sinh viên tồn tại, thêm điểm
    if (student != null) {
      student.grades.add(Grade(subject: subject, score: score));
    }
  }

  // Sửa điểm của một môn học
  void updateGrade(int studentId, String subject, int newScore) {
    // Tìm kiếm sinh viên
    Student? student;
    for (var s in students) {
      if (s.id == studentId) {
        student = s;
        break;
      }
    }

    // Nếu sinh viên tồn tại, tìm điểm môn học và cập nhật
    if (student != null) {
      Grade? grade;
      for (var g in student.grades) {
        if (g.subject == subject) {
          grade = g;
          break;
        }
      }

      // Nếu điểm môn học tồn tại, cập nhật điểm
      if (grade != null) {
        grade.score = newScore;
      }
    }
  }

  // Xóa điểm của một môn học
  void deleteGrade(int studentId, String subject) {
    // Tìm kiếm sinh viên
    Student? student;
    for (var s in students) {
      if (s.id == studentId) {
        student = s;
        break;
      }
    }

    // Nếu sinh viên tồn tại, xóa điểm của môn học
    if (student != null) {
      student.grades.removeWhere((grade) => grade.subject == subject);
    }
  }

  // Lấy toàn bộ danh sách sinh viên
  List<Student> getAllStudents() {
    return students;
  }

  // Lấy thông tin sinh viên theo ID
  Student? getStudentById(int id) {
    // Tìm kiếm sinh viên theo id
    for (var student in students) {
      if (student.id == id) {
        return student; // Trả về sinh viên tìm được
      }
    }
    return null; // Nếu không tìm thấy, trả về null
  }
}
