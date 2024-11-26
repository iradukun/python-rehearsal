class Animal {
  void makeSound() {
    print('The animal makes a sound.');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

void main() {
  Animal cat = Cat();
  Animal dog = Dog();
  
  cat.makeSound();   // Output: Meow!
  dog.makeSound();   // Output: Woof!
}