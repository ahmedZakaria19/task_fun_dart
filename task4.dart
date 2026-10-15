void filterNumbers(
  List<int> numbers,{
  int min = 0,
  int max = 100,
  bool includeEven = true,
}) {
  List<int> filterNumbers = [];
  for (int number in numbers) {
    if (number >= min && number <= max) {
      if (includeEven) {
        if (number % 2 == 0) filterNumbers.add(number);
      }
      else
        filterNumbers.add(number);
    }
  }
  print(filterNumbers);
}

void main() {
filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12);
filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12,includeEven:false);
}
