class Student {
  int id;
  String firstName;
  String lastName;
  int grade;
  String status;

  Student(String firstName, String lastName, int grade) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }
  Student.withId(int id, String firstName, String lastName, int grade) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
    this.status = status;
  }

  String get getStatus {
    String message = "";

    if (grade >= 50) {
      message = "Geçti";
    } else if (grade >= 40) {
      message = "Bütünlemeye Kaldı";
    } else {
      message = "Kaldı";
    }
    return message;
  }
}
