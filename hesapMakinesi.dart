import 'dart:io';

void topla(String? a, [String? b]) {
  //Opsiyonel
  try {
    if (a != null) {
      double aDouble = double.parse(a);
      if (b != null) {
        double bDouble = double.parse(b);
        print("$aDouble + $bDouble = ${aDouble + bDouble}");
      } else {
        print("$aDouble + $aDouble = ${aDouble + aDouble}");
      }
    } else {
      print("a değeri null veya geçersiz bir sayıdır.");
    }
  } catch (e) {
    if (e is FormatException) {
      print("Hata geçersiz değerler girildi veya değer girilmedi");
    }
  }
}

void cikarma({required String? a, required String? b}) {
  // gerekli
  try {
    print(a == null);
    if (a != null && b != null) {
      double aDouble = double.parse(a);

      double bDouble = double.parse(b);
      print("$aDouble - $bDouble = ${aDouble - aDouble}");
    } else {
      print("a ve b parametreleri boş olamaz");
    }
  } catch (e) {
    if (e is FormatException) {
      print("Hata geçersiz değerler girildi veya değer girilmedi");
    }
  }
}

void carpma(String? a, [String? b]) {
  try {
    if (a != null) {
      double aDouble = double.parse(a);
      if (b != null) {
        double bDouble = double.parse(b);
        print("$aDouble x $bDouble = ${aDouble * bDouble}");
      } else {
        print("$aDouble x $aDouble = ${aDouble * aDouble}");
      }
    } else {
      print("a değeri null veya geçersiz bir sayıdır.");
    }
  } catch (e) {
    if (e is FormatException) {
      print("Hata geçersiz değerler girildi veya değer girilmedi");
    }
  }
}

void bolme(String? a, String? b) {
  //sıralı
  try {
    if (a != null && b != null) {
      double aDouble = double.parse(a);
      double bDouble = double.parse(b);
      print("$aDouble / $bDouble = ${aDouble / bDouble}");
    } else {
      print("a ve b parametreleri boş olamaz");
    }
  } catch (e) {
    if (e is FormatException) {
      print("Hata geçersiz değerler girildi veya değer girilmedi");
    }
  }
}

void menu() {
  print("işlem tipini seçiniz:");
  print("1- Toplama");
  print("2- Çıkarma");
  print("3- Çarpma");
  print("4- Bölme");
}

void main() {
  try {
    num islem = 0;

    while (true) {
      menu();

      islem = int.parse(stdin.readLineSync()!);
      print("1.Parametreyi Girin");
      String? param1 = stdin.readLineSync();
      print(
          "2.Parametreyi Girin ((Toplama Ve Çarpma için Opsiyonel) , (Çıkarma ve Bölme İçin Gerekli))");

      String? param2 = stdin.readLineSync();
      if (islem == 1) {
        if (!(param2 == "")) {
          topla(param1, param2);
        } else {
          topla(param1);
        }
      } else if (islem == 2) {
        cikarma(a: param1, b: param2);
      } else if (islem == 3) {
        if (!(param2 == "")) {
          carpma(param1, param2);
        } else {
          carpma(param1);
        }
      } else if (islem == 4) {
        bolme(param1, param2);
      }
    }
  } catch (e) {
    print(e);
  }
}
