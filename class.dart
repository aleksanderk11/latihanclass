void main(){
  var komputer1 = Komputer(); // ini cara buat objeknya
  komputer1.merek = 'Asus';
  komputer1.cpu = 'I7 12700H';
  komputer1.slotram.add(8);
  komputer1.slotpenyimpanan.add(512);
  // print(komputer1.merek);
  // print(komputer1.ram);
  // print(komputer1.penyimpanan);
  // print(komputer1.cpu);
  komputer1.cetak();

print('-----------------------------');

  var komp2 = Komputer();
  komp2.merek = 'Lenovo';
  komp2.cpu = 'I3 GEN 12';
  komp2.slotram.add(8);
  komp2.slotram.add(8);
  komp2.slotpenyimpanan.add(512);
  komp2.slotpenyimpanan.add(512);
  komp2.cetak();
  
// print('-----------------------------');

//   var mhs = Mahasiswa();
//   mhs.NPM = '25413120';
//   mhs.Nama = 'Aleksander Kurniawan';
//   mhs.Prodi = 'Sistem Informasi';
//   mhs.JK = 'Laki-Laki';
//   mhs.Semester = 3;
//   mhs.cetak();

}

// bisa di luar main, di bawah ini adalah kerangka
class Komputer{
  String? merek; // semua ini null
  List slotram = [];
  List slotpenyimpanan = [];
  String? cpu;

  cetak() { // function untuk langsung print semua isi class
    print('Komputer ini merek $merek');
    // print('Komputer ini memiliki slot RAM $slotram');
    for (var i = 0; i < slotram.length; i++) {
      print('Komputer ini memiliki slot RAM ${i + 1} ${slotram[i]} gb');
    }
    for (var i = 0; i < slotpenyimpanan.length; i++) {
      print('Komputer ini memiliki slot Penyimpanan ${i + 1} ${slotpenyimpanan[i]} gb');
    }
    print('Komputer ini menggunakan CPU $cpu');
    
  }
}

// class Mahasiswa{
//     // String? NPM;
//     // String? Nama;
//     // String? Prodi;
//     // String? JK;
//     String? NPM, Nama, Prodi, JK;
//     int? Semester;

//     cetak(){
//     print('NPM : $NPM');
//     print('Nama : $Nama');
//     print('Program Studi : $Prodi');
//     print('Jenis Kelamin : $JK');
//     print('Semester : $Semester');
//     } 
//   }