class SimpleInterest{
  double? principal;
  double? rate;
  double? time;
  double interest(){
    return ((principal ?? 0) * (rate ?? 0) * (time ?? 0)) / 100;
  }

}

void main(){
SimpleInterest simpleinterest = SimpleInterest();
simpleinterest.principal=1000;
simpleinterest.rate=10;
simpleinterest.time=3;

print("Simple interest is  ${simpleinterest.interest()}");
}