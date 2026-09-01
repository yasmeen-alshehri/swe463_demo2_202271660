Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  print('Start counting...');

  await for (final count in countStream(3)) {
    print(count);
  }

  print('Done');
}