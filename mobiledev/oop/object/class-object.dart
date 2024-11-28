class Animal{
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display(){

    print("Animal name: $name");
    print("Number of legs: $numberOfLegs");
    print("Lifespan: $lifeSpan");
  }
  
}
void main(){
  Animal animal= Animal();
  animal.name= "Cow yard";
  animal.numberOfLegs=4;
  animal.lifeSpan=30;
  animal.display();
}