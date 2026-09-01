Future<String> fetchData() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Fetched Data';
}

Future<void> main() async {
  print('[1] Using async/await');
  print('[2] Fetching data...');

  final data = await fetchData();
  print('[3] Result: $data');

  print('[4] Using .then()');

  fetchData().then((value) {
    print('[6] .then() result: $value');
  }).catchError((error) {
    print('[7] Error: $error');
  });

  print('[5] Program continues after .then() call');
}

// Order: [1] → [2] → [3] → [4] → [5] → [6]