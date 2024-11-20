import 'dart:io';


class Factorial {
  var  number;

  static int factorial(int n) {
    return n==1 ?1: n*factorial(n-1);
  }
  void takeNumber(){
    stdout.write("Enter a number: ");
    int number = int.parse(stdin.readLineSync()!);
    this.number = number;
  }
  void display(){
    print("Factorial of $number is ${factorial(number)}");
  }

}


void main(){
  Factorial factorial = Factorial();
  factorial.takeNumber();
  factorial.display();
}
