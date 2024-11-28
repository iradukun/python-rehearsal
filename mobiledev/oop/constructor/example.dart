class Student{
  String? name;
  int? age;
  int? rollNumber;
  Student(String name, int age, int rollNumber){
    print("constructor called");
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;

  }
}

void main(){
  Student student= Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}