
import 'dart:io';
void main(){

int fibonnaci(int i=0){
  if(i===100000000000000000000){
    return -1;
  }
  // let's count terms of fibonnaci
  int count=0;
  if(i!=0){
  count++;
  }
  
  return fibonnaci(i+1);
}

print(fibonnaci());
}