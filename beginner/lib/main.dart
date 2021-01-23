import 'package:beginner/models/student.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //  theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State {
  List<Student> students = [
    Student.withId(1, "Remzi", "Güneş", 90),
    Student.withId(1, "Nejla", "Güneş", 39),
    Student.withId(1, "Ahmet", "Güneş", 70)
  ];
  Student selectStudent = Student.withId(0, "Hiç kimse", "", 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Öğrenci Takip Sistemi"),
        ),
        body: buildBody());
  }

  Widget buildBody() {
    var selectedStudent = Text("Seçili Öğrencic " + selectStudent.firstName);
    return Column(
      children: [
        Expanded(
          //bu widget ekrana göre çizim yapar.listview widgetın bütün ekranı kaplamasını sağlar

          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                    students[index].firstName + " " + students[index].lastName),
                subtitle: Text("Sınavdan aldığı not: " +
                    students[index].grade.toString() +
                    "[" +
                    students[index].getStatus +
                    "]"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.pngio.com/avatar-icon-png-105-images-in-collection-page-3-avatarpng-512_512.png"),
                ),
                trailing: buildStatusIcon(students[index].grade),
                onTap: () {
                  setState(() {
                    this.selectStudent = students[index];
                  });
                  print(this.selectStudent.firstName);
                },
                onLongPress: () {
                  print("lonnnnnng");
                },
              );
            },
          ),
        ),
        selectedStudent,
        Row(
          children: [
            Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: RaisedButton(
                  color: Colors.greenAccent,
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("Yeni Öğrenci")
                    ],
                  ),
                ))
          ],
        )
      ],
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 70) {
      return Icon(Icons.done);
    } else if (grade >= 50) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }
}
