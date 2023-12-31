Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}

Stream sumStreamprogression(Stream<int> stream) async* {
  int sum = 0;
  await for (final value in stream) sum += value;
  yield sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}

void main(List<String> args) {
  sumStreamprogression(countStream(10)).listen(print);
}

myclass valuepf() {
  return myclass();
}

class myclass {}
