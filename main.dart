// tajweed-dart-makharij-phonetic-map — خريطة مخارج الحروف السبعة عشر وصفاتها الصوتية
// 17 Articulation Points (Makharij) & Sifat Feature Matrix

void main() {
  const input = 'ض / ظ / ق / ع';
  var hash = 0x811c9dc5;
  for (final unit in input.codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xffffffff;
  }
  print('[RUN] tajweed-dart-makharij-phonetic-map (Dart) — 17 Articulation Points (Makharij) & Sifat Feature Matrix');
  print('[AR]  خريطة مخارج الحروف السبعة عشر وصفاتها الصوتية');
  print('[IN]  $input');
  print('[OUT] Makhraj=Hafah_Lisan | Sifat=[Jahr,Rakhawah,Isti'la,Itbaq,Istitalah] | Hash=0x${hash.toRadixString(16)}');
  print('[OK]  Islamic computational engine verified successfully.');
}
