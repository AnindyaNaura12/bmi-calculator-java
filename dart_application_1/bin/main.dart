void main() {
  double tinggi = 170;
  double berat = 65;

  if (tinggi <= 0 || berat <= 0) {
    print("Input tidak valid");
  } else {

    double tinggiMeter = tinggi / 100;
    double bmi = berat / (tinggiMeter * tinggiMeter);

    print("BMI kamu adalah: $bmi");

    if (bmi < 18.5) {
      print("Kategori: Kurus");
    } else if (bmi < 25) {
      print("Kategori: Normal");
    } else if (bmi < 30) {
      print("Kategori: Gemuk");
    } else {
      print("Kategori: Obesitas");
    }
    
  }
}