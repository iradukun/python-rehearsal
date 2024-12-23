import 'dart:io';


class Factorial {
  var  number;

  static BigInt factorial(BigInt n) {
    return n == BigInt.one ? BigInt.one : n * factorial(n - BigInt.one);
  }
  void takeNumber(){
    stdout.write("Enter a number: ");
    int number = int.parse(stdin.readLineSync()!);
    this.number = number;
  }
  void display(){
    print("Factorial of $number is ${factorial(BigInt.from(number))}");
  }

}
void main(){
  Factorial factorial = Factorial();
  factorial.takeNumber();
  factorial.display();
}
