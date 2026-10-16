void calculateCartTotal(
  List<double> prices, {
  double discountPercent = 0,
  double taxPercent = 14,
  double deliveryFee = 0,
  bool isMember = false,
  double maxDiscount = 100,
}) {
    if(prices.isEmpty){
      print("Total: 0");
      return;
    }
    double total = 0;
    // calculate the total
    for (double price in prices) total += price;
    // apply discount
    if (isMember) discountPercent += 5;
    if(discountPercent < maxDiscount){
        total -= total * (discountPercent / 100);
    }
    else {
        total -= total * (maxDiscount / 100);
    }
    // apply tax and delivery fee
    total += total * (taxPercent / 100) + deliveryFee;
    print("Total: $total");
}

void main(){
    calculateCartTotal([100, 200, 50]);
    calculateCartTotal(
    [100, 200, 50],
    discountPercent: 10,
    taxPercent: 14,
    deliveryFee: 25,
    );
    calculateCartTotal(
    [100, 200, 50],
    discountPercent: 10,
    isMember: true,
    maxDiscount: 12,
    );

}
