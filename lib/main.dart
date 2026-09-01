void main() {
  var fruitsList = ['apples', 'oranges', 'bananas'];
  var grades = {'quiz1': 85, 'quiz2': 92};
  var tags = {'dart', 'flutter', 'mobile', 'flutter'};

  fruitsList.add('mango');
  grades['quiz3'] = 95;
  tags.add('dart');

  print(fruitsList[1]);
  print(grades['quiz2']);
  print(tags);

  // The duplicate set item is not stored twice because a Set only stores unique values.
}