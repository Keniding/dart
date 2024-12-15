void main() {
  // Retornar 2 o mas valores
  // Definición de la función que retorna un Record nombrado
  ({int suma, int multiplicacion}) sumarMultiplicar(int numero1, int numero2) {
    return (suma: numero1 + numero2, multiplicacion: numero1 * numero2);
  }

  // Si no se define nombres y solo se trabajo con (int, int), el acceso a valores se da con $1 y $2

  // Forma 1: Asignar a una variable
  var result = sumarMultiplicar(4, 6);

  // Forma 2: Desestructuración usando var
  var (suma: suma, multiplicacion: multiplicacion) = sumarMultiplicar(4, 6);
  print('La suma es: $suma y la multiplicación es: $multiplicacion');

  // Forma 3: Desestructuración con tipos explícitos
  ({int suma, int multiplicacion}) valores = sumarMultiplicar(4, 6);
  print('La suma es: ${valores.suma} y la multiplicación es: ${valores.multiplicacion}');

  // Forma 4: Desestructuración con renombrado
  var (suma: s, multiplicacion: m) = sumarMultiplicar(4, 6);
  print('La suma es: $s y la multiplicación es: $m');

  // Acceso usando los nombres definidos en el Record
  print('La suma es: ${result.suma}'); // 10
  print('La multiplicacion es: ${result.multiplicacion}'); // 24
}
