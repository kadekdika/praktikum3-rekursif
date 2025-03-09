import 'dart:io';

void cetakKombinasi(String prefix, String sisa, int n) {
  if (n == 0) {
    print(prefix);
    return;
  }
  for (int i = 0; i < sisa.length; i++) {
    cetakKombinasi(prefix + sisa[i], sisa.replaceRange(i, i + 1, ""), n - 1);
  }
}
int? bacaAngka(String pesan) {
  stdout.write(pesan);
  return int.tryParse(stdin.readLineSync() ?? '');
}
String? bacaString(String pesan) {
  stdout.write(pesan);
  return stdin.readLineSync();
}
void main() {
  int? n = bacaAngka("Masukkan jumlah karakter (N): ");
  if (n == null || n <= 0) {
    print("Jumlah karakter harus angka positif.");
    return;
  }
  String? input = bacaString("Masukkan string karakter unik: ");
  if (input == null || input.length < n) {
    print("Input tidak valid atau kurang panjang.");
    return;
  }
  print("Semua kombinasi dari $n karakter:");
  cetakKombinasi("", input, n);
}
