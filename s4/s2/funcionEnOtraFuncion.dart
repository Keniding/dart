void main() {
  // Funcion de alto orden
  void funcion1(Function miFunction) { 
    print('Entro a la funcion 1');
    miFunction();
  }

  void funcion2() {
    print('Entro a la funcion 2');
  }

  funcion1(funcion2);
}