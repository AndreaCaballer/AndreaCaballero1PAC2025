void main() {

  Libro libro1 = Libro("Cien años de soledad", "Gabriel Garcia Marquez", 1967);
  Libro libro2 = Libro("Relato de un náufrago", "Gabriel Garcia Marquez", 2013);
  Libro libro3 = Libro("El sabueso de los Baskerville", "Arthur Conan Doyle", 1902);

  Biblioteca biblioteca = Biblioteca();
  biblioteca.agregarLibros(libro1);
  biblioteca.agregarLibros(libro2);
  biblioteca.agregarLibros(libro3);

  List<Libro> librosdeGarcia = biblioteca.buscarlibrosporautor("Gabriel Garcia Marquez");
  print("Libros de Gabriel Garcia Marquez: $librosdeGarcia ");

  List<Libro> librosOrdenados = biblioteca.librosordenados();
  print("Libros ordenados por año de publicación: $librosOrdenados");

  biblioteca.eliminarLibros("Cien años de soledad");
  print("Libros que se encuentran después de eliminar 'Cien años de soledad': ${biblioteca.libros}");
}

class Libro {
  String titulo;
  String autor;
  int aniopublicacion;

  Libro(this.titulo, this.autor, this.aniopublicacion);

  String toString() {
    return "$titulo de $autor $aniopublicacion";
  }
}

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibros(Libro libro) {
    libros.add(libro);
  }

  void eliminarLibros(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> buscarlibrosporautor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();
  }

  List<Libro> librosordenados() {
    libros.sort((a, b) => a.aniopublicacion.compareTo(b.aniopublicacion));
    return libros;
  }
}