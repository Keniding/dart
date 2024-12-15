void main() {
  // Excepciones, captura de error, sin cortar el sistema
  late int? primero = 10;
  late int? segundo = null;

  // ? puede llegar a ser nulo
  // ! tiene valor correspondiente
  // Manejo de errores con try-catch
  try {
  // Error a drede
    print(segundo! + primero); // Valor nulo en uno de los campos
  } catch (e) {
    print('Error: ${e.toString()}'); 
  } finally {
    print('Finalmente'); // Siempre se ejecuta
  }
}