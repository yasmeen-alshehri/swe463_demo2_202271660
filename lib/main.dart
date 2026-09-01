void main() {
  List<String> fruitsList = [];
  List<String> moreFruits = ['grape', 'kiwi','mango'];

  List<String> allFruits = [
    'watermelon',
    if (fruitsList.isNotEmpty) ...fruitsList,
    for (var fruit in moreFruits) fruit,
  ];

  print(allFruits);
}

// The spread operator (...) adds all elements of a list into another collection.