import 'dart:io';

void main(){
  String? text;
  print("Enter text");
  text=stdin.readLineSync();
  if(text!=null){
  if(text==text.toUpperCase()){
    print("text is upper case");
  }else{
    if(text==text.toLowerCase()){
      print("text is lowercase");
    }
    
  }

  }
}