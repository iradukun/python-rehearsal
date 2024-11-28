class SimpleInterest{
  double? principal;
  double? rate;
  double? time;
  double interest(){
    return (principal*rate*time)/100;
  }

}

void main(){
SimpleInterest simpleinterest= SimpleInterest;
simpleinterest.principal=1000;
simpleinterest.rate=10;
simpleinterest.time=3;

print("Simple interest is  ${simpleinterest.interest()}");
}