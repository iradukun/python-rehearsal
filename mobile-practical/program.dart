import "dart:io";
 class customerPurchase{
 double unitPrice=0;
 double numberOfproducts=0;
 double tax=0;
 double finalPrice=0;
 customerPurchase();
 double totalPrice(){
  //  check discount and add it
  double totalPrice=unitPrice*numberOfproducts;
  if(totalPrice>300000){
   finalPrice=totalPrice-((totalPrice*1.5)/100);
  }else{
    finalPrice=totalPrice;
  }
  
  return finalPrice;
 }
 

 double calculateTax(){
  if(finalPrice<=100000){
    tax=finalPrice * 6/100;
  }else if(finalPrice>100000 && finalPrice<= 100000){
     double firstHalf=100000*6/100;
     double diff=finalPrice-100000;
     double secondTax=diff*4/100;
     tax=firstHalf+secondTax;
  }else{
  double firstHalf=100000*6/100;
  double secondHalf=400000*6/100;
  double diff=finalPrice-500000;
  double thirdTax=diff*3/100;
  tax=firstHalf+secondHalf+thirdTax;
  }
 return tax;
  }

}

class Tax extends customerPurchase{

 Tax();
@override
double calculateTax(){
  if(finalPrice<=100000){
    tax=(finalPrice*6)/100;
  }else if(finalPrice>100000 && finalPrice<=500000){
    double firstHalf=(100000*6)/100;
     double secondTax=(finalPrice-100000*4)/100;
     tax=firstHalf+secondTax;
  }else{
  double firstHalf=(100000*6)/100;
  double secondHalf=(400000*6)/100;
  double thirdTax=(finalPrice-500000*3)/100;
  tax=firstHalf+secondHalf+thirdTax;
  }
  return tax;
  }

}

class Price extends customerPurchase{
Price();

@override
double totalPrice(){
  //  check discount
  double totalPrice=unitPrice* numberOfproducts;
  if(totalPrice>300000){
   totalPrice=totalPrice-((totalPrice*1.5)/100);
  }
  return totalPrice;
 }

}

void main(){
// take inputs from user
print("===============WELCOME TO THE TAX CALCULATION SYSTEM================");
 var unitPrice,products;
 print("Enter unit price:  ");
 unitPrice=double.parse(stdin.readLineSync()!);
 print("Enter the number of products:   ");
 products=double.parse(stdin.readLineSync()!);
//  call the classes;
Price price=Price();
price.unitPrice=unitPrice;
price.numberOfproducts=products;
print("the total price is : ${price.totalPrice()}");
print("the total tax is : ${price.calculateTax()}");


}