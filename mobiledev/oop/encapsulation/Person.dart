class Person {

  // Properties

  String? firstName;

  String? lastName;



  // Constructor

  Person(this.firstName, this.lastName);



  // Getter

  String get fullName{
    return "$firstName $lastName";
  }

}



void main() {

  Person p = Person("Moustapha", "Iradukunda");

  print(p.fullName);

}
