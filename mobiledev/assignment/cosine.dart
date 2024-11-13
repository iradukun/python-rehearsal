import 'dart:io';
import 'dart:math';

void main(){
  int number;
  print("Enter a number:");
  number = int.parse(stdin.readLineSync()!);
  double cosNumber= cos(number*(180.0/pi));
  
  print("the cosine of $number  is  $cosNumber");
}