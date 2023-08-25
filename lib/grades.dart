class Grades {
  late int id;
  late String name;
  late String npm;
  late String email;
  late String nama_matkul;
  late String sks;
  late String nilai_UAS;
  late String nilai_UTS;
  late String nilai_tugas;
  late String nilai_quiz;
  late String poin_kehadiran;
  late String nilai_lainnya;

  Grades(this.id, this.name, this.npm, this.email, this.nama_matkul, this.sks, this.nilai_UAS, this.nilai_UTS, this.nilai_tugas, this.nilai_quiz, this.poin_kehadiran, this.nilai_lainnya);

  Grades.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.name = parsedJson['name'];
    this.npm = parsedJson['npm'];
    this.email = parsedJson['email'];
    this.nama_matkul = parsedJson['nama_matkul'];
    this.sks = parsedJson['sks'];
    this.nilai_UAS = parsedJson['nilai_UAS'];
    this.nilai_UTS = parsedJson['nilai_UTS'];
    this.nilai_tugas = parsedJson['nilai_tugas'];
    this.nilai_quiz = parsedJson['nilai_quiz'];
    this.poin_kehadiran = parsedJson['poin_kehadiran'];
    this.nilai_lainnya = parsedJson['nilai_lainnya'];
  }

}
