// void main(){
//   var perpuswd = Library();
  

//   var buku1 = Book();
//   buku1.title = 'Habis Gelap Terbitlah Terang';
//   buku1.author = 'RA.Kartini';
//   buku1.year = 1911;

//   var buku2 = Book();
//   buku2.title = 'Rich Dad Poor Dad';
//   buku2.author = 'Robert T.Kiyosaki';
//   buku2.year = 1997;
  
//   var buku3 = Book();
//   buku3.title = 'The Psychology of Money';
//   buku3.author = 'Morgan Housel';
//   buku3.year = 2020;

//   perpuswd.addBook(buku1);
//   perpuswd.addBook(buku2);
//   perpuswd.addBook(buku3);

//   perpuswd.displayBooks();
//   perpuswd.borrowBook('Rich Dad Poor Dad');
//   perpuswd.displayBooks();

//   // stdout.write('Masukkan Judul Buku yang ingin dipinjam : ');
//   // var inputpb = (stdin.readLineSync()!);

//   // if (inputpb == 'Habis Gelap Terbitlah Terang') {
//   //   perpustakaan.borrowBook('Habis Gelap Terbitlah Terang');
//   // } else if (inputpb == 'Rich Dad Poor Dad'){
//   //   perpustakaan.borrowBook('Rich Dad Poor Dad');
//   // } else if (inputpb == 'The Psychology of Money') {
//   //   perpustakaan.borrowBook('The Psychology of Money');
//   // } else {
//   //   print('Buku tidak ditemukan');
//   // }
  
//   // if (inputpb == perpustakaan.books) {
    
//   }

//   // perpustakaan.borrowBook('Habis Gelap Terbitlah Terang');
//   // perpustakaan.borrowBook('Rich Dad Poor Dad');
//   // perpustakaan.borrowBook('Rich Dad Poor Dad');
//   // perpustakaan.borrowBook('Dilan 1990');


// class Book {
//   String? title, author;
//   int? year;
//   bool isborrowed = false;
//   borrowBook(){
//     if (isborrowed == false) {
//       isborrowed = true;
//       print('Buku dipinjam');
//     } else {
//       print('Buku Sudah dipinjam');
//     }
//   }
// }

// class Library{
//   List<Book> books = [];
  
//   addBook(Book book){
//   books.add(book);
//   print('Buku sudah ditambahkan');
//   }

//    displayBooks() {
//     for (var element in books) {
//       print('${element.title} | ${element.author} | ${element.year} | ${element.isborrowed == true ? 'Dipinjam' : 'Tersedia'}');
//     }
//   }
//   //   for (var i = 0; i < books.length; i++) {
//   //     print('Judul Buku: ${books[i].title}');
//   //     print('Penulis Buku: ${books[i].author}');
//   //     print('Tahun Terbit: ${books[i].year}');
//   //     print('Status: ${books[i].isborrowed ==true ? 'Dipinjam' : 'Tersedia'}');
//   //     print('------------------------------');
//   //   }
//   // }
  
//   borrowBook(String title) { // meminjam buku berdasarkan judul buku
//   for (var element in books) {
//     if (element.title == title) {
//       element.isborrowed = true;
//       print('Buku dengan judul ${element.title} sudah dipinjam');
//     }
//   }
//   //   for (var i = 0; i < books.length; i++) {
//   //     if(books[i].title == title) {
//   //       books[i].borrowBook();
//   //       return;
//   //     }
//   //   }
//   //   print('Buku tidak ditemukan');
//   // }
// }
// }


void main(){
    var buku1 = Book();
    buku1.title = 'Habis Gelap Terbitlah Terang';
    buku1.author = 'RA.Kartini';
    buku1.year = 1911;

    var buku2 = Book();
    buku2.title = 'Rich Dad Poor Dad';
    buku2.author = 'Robert T.Kiyosaki';
    buku2.year = 1997;
    buku2.borrowbook();

    var buku3 = Book();
    buku3.title = 'The Psychology of Money';
    buku3.author = 'Morgan Housel';
    buku3.year = 2020;

    var perpuswd = Library();
    perpuswd.addbook(buku1);
    perpuswd.addbook(buku2);
    perpuswd.addbook(buku3);

    perpuswd.displaybook();
    perpuswd.borrowbook('Habis Gelap Terbitlah Terang');
    perpuswd.displaybook();
}

    class Book{
    String?title;
    String?author;
    int?year;
    bool isborrowed = false; 

    borrowbook(){
        if (isborrowed == false){
            isborrowed = true;
            print('buku dipinjam');
        } else {print('Buku sedang dipinjam');}
    }



    }

    class Library{
        List <Book> books = [];
        addbook (Book book){
        books.add(book);
        print('Buku sudah ditambahkan');
        }

    displaybook(){
      for (var element in books){
        print('${element.title} | ${element.author} | ${element.year} | ${element.isborrowed == true? 'Dipinjam' : 'Tersedia'}');
      }
    }

    borrowbook(String title){
      for(var element in books){
        if(element.title == title){
          element.isborrowed == true;
          print('Buku dengan judul ${element.title} sudah dipinjam');
          return;
        }
      } 
    }
    }