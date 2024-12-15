void main() {
  // Estructura clave - valor, que reduce los errores de insertidumbre de las listas
  // Busqueda por llave se retorna el valor buscado
  // No se pueden repetir las llaves pero si valores
  Map<String, int> edades = {};
  edades['Juan'] = 25;
  edades['Ana'] = 30;
  edades['Pedro'] = 21;

  Map<String, String> signos = {
    'Juan': 'Libra', 
    'Ana': 'Aries', 
    'Pedro': 'Tauro'
    };
  print('La edad Juan es: ${edades['Juan']}');
  print('El signo de Juan es: ${signos['Juan']}');
  // Solo obtenermos valores definidas, no retornará excepciones
  signos['Henry'] = 'Capricornio';
  print('El signo de Henry es: ${signos['Henry']}');

  print('Los valores del mapa es: ${edades}');

  // Cambio de valor
  edades['Juan'] = 35;
  print('La edad de Juan es: ${edades['Juan']}');
}