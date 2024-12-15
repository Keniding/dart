void main() {
  // Variable con nuestros propios tipos
  generoMusical kiss = generoMusical.ROCK;
  print(kiss);

  estacionesAnio enero = estacionesAnio.VERANO;
  print(enero);
}

// Variables estrictos
enum generoMusical {
  ROCK,
  POP,
  METAL,
  ELECTRONICA,
}

enum estacionesAnio {
  PRIMAVERA,
  VERANO,
  OTONIO,
  INVIERNO
}