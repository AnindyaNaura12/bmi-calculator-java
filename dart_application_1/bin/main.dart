void main() {
  List<Map<String, dynamic>> riwayat = [];

  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  tampilkanRiwayat(riwayat);
}

void hitungBMI(double tinggi, double berat, List<Map<String, dynamic>> riwayat) {

  if (tinggi <= 0 || berat <= 0) {
    print("Input tidak valid");
    return;
  }

  double tinggiMeter = tinggi / 100;
  double bmi = berat / (tinggiMeter * tinggiMeter);

  String kategori;

  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  riwayat.add({
    "tinggi": tinggi,
    "berat": berat,
    "bmi": bmi,
    "kategori": kategori
  });
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {

  print("Riwayat Perhitungan BMI:");

  for (int i = 0; i < riwayat.length; i++) {
    print(
        "Data ${i + 1}: Tinggi ${riwayat[i]['tinggi']} cm, Berat ${riwayat[i]['berat']} kg, BMI ${riwayat[i]['bmi'].toStringAsFixed(2)}, Kategori ${riwayat[i]['kategori']}");
  }
}