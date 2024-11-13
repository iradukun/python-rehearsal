import 'dart:io';

void main(){
  var num1;
  print("enter num1");
  num1= stdin.readLineSync();
  var Fnum1= int.parse(num1); 
 var num2;
  print("enter num2");
  num2= stdin.readLineSync();
  var Fnum2= int.parse(num2);

  if(Fnum2>Fnum1){
    print("the second should be less than first number");
    exit(1);
  }else {
    print("enter num 3");
    var num3;
    num3= stdin.readLineSync();
    var Fnum3= int.parse(num3);
    if(Fnum3>Fnum1){
      print("the third numbe should be smaller than the first");
      exit(1);
    }
    var sum= Fnum1+Fnum2+ Fnum3;
    print("the sum is :  $sum");
  }
  
}