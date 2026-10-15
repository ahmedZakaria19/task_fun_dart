void main() {
  calculateTotal(50.0, 3);
  calculateTotal(25.5, 2);
  greetUser(name: "Ahmed");
  greetUser(name: "Zakaria", greeting: "Hi");
  calculateOrder(price: 50.5, quantity: 3, discount: 10.0, deliveryFee: 5.0);
  calculateOrder(price: 20.0, quantity: 5);
}

void calculateTotal(double price, int quantity) {
  double total = price * quantity;
  print("Total: $total");
}

void greetUser({required String name, String greeting = "Hello"}) {
  print("$greeting $name!");
}

void calculateOrder ({required double price,required int quantity,double discount=0 ,double deliveryFee=0 }){
  print((price * quantity) - discount + deliveryFee);
}
