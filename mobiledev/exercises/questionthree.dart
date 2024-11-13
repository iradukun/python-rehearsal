import 'dart:io';
void main() {
  var input;
  List<int>numbers=[];
do{
  print("Enter input as integer:");
  input= stdin.readLineSync();

  var num=int.parse(input);
  numbers.add(num);
  if(num==0){
  print("The numbers entered are  : $numbers");
  exit(1);
  }
}while(input);
}