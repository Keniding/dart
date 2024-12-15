void main() {
  void function1(Function function) {
    print('Entro en funcion 1');
    function();
  }

  void funcion3() {
    print('Este es la funcion 3');
  }

  function1((){ // Funcion Anonima
    print('Entro en funcion 2, anonymous');
    funcion3();
  });
}