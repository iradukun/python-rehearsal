class Rectangle{
  double? length;
  double? width;

  double Area(){
    return length! * width!;
  }
  void display(){
    print("the area of this rectangle is : ${this.Area()}");
  }
}

void main(){
  Rectangle rec= Rectangle();
  rec.length =5;
  rec.width = 6;
  rec.display();
}