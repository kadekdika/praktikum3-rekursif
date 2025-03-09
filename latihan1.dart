import 'dart:io';

Map<String, int> caching = {};

int pascal(int row, int col) {
  if (col == 0 || col == row) return 1;
  String key = '$row,$col';
  if (caching.containsKey(key)) return caching[key]!;
  return caching[key] = pascal(row - 1, col - 1) + pascal(row - 1, col);
}
void printPascal(int numRows) {
  for (int i = 0; i < numRows; i++) {
    stdout.write(' ' * (numRows - i));
    for (int j = 0; j <= i; j++) {
      stdout.write('${pascal(i, j)} ');
    }
    stdout.writeln();
  }
}
void main() {
  int numRows = 5;
  printPascal(numRows);
}
