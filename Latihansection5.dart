void main(){
  var perpustakaan = Library();
  
  var buku1 = Book();
  buku1.title = 'Habis Gelap Terbitlah Terang';
  buku1.author = 'RA.Kartini';
  buku1.year = 1911;

  var buku2 = Book();
  buku2.title = 'Rich Dad Poor Dad';
  buku2.author = 'Robert T.Kiyosaki';
  buku2.year = 1997;
  
  var buku3 = Book();
  buku3.title = 'The Psychology of Money';
  buku3.author = 'Morgan Housel';
  buku3.year = 2020;

  perpustakaan.addBook(buku1);
  perpustakaan.addBook(buku2);
  perpustakaan.addBook(buku3);

  print('Jumlah Buku: ${perpustakaan.books.length}');
  perpustakaan.displayBooks();

  perpustakaan.borrowBook('Habis Gelap Terbitlah Terang');
  perpustakaan.borrowBook('Rich Dad Poor Dad');
  perpustakaan.borrowBook('Rich Dad Poor Dad');
  perpustakaan.borrowBook('Dilan 1990');

}

class Book {
  String? title, author;
  int? year;
  bool? isborrowed = false; // status peminjaman buku
  
  borrowBook(){
    if (isborrowed == true) {
      print('Buku sudah dipinjam');
    } else {
      isborrowed = true;
      print('Buku dipinjamkan');
    }
  }
}

class Library {
  List<Book> books= []; // daftar buku di perpustakaan

  addBook (Book book){
  books.add(book);
  }
  displayBooks() {
    for (var i = 0; i < books.length; i++) {
      print('Judul Buku: ${books[i].title}');
      print('Penulis Buku: ${books[i].author}');
      print('Tahun Terbit: ${books[i].year}');
      print('Status: ${books[i].isborrowed ==true ? 'Dipinjam' : 'Tersedia'}');
      print('------------------------------');
    }
  }
  borrowBook(String title) { // meminjam buku berdasarkan judul buku
    for (var i = 0; i < books.length; i++) {
      if(books[i].title == title) {
        books[i].borrowBook();
        return;
      }
    }
    print('Buku tidak ditemukan');
  }
}