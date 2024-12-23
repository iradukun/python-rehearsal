class Home{
  String? name;
  String? address;
  int numberOfRooms = 0;

  void display(){
    print("Name: $name");
    print("Address: $address");
    print("Number of Rooms: $numberOfRooms");
  }
}

void main() {
  Home home = Home();
  home.name = "rugwiro building";
  home.address = "KG street 457N";
  home.display();
}