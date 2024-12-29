void main() {
  // O por numero int = 1, pero se recomienda los enum
  dia diaSemana = dia.sabado;
  switch(diaSemana) {
    case dia.lunes:
      print('El dia es lunes');
      break;
    case dia.martes:
      print('El dia es martes');
      break;
    case dia.miercoles:
      print('El dia es miercoles');
      break;
    case dia.jueves:
      print('El dia es jueves');
      break;
    case dia.viernes:
      print('El dia es viernes');
      break;
    case dia.sabado || dia.domingo:
      print('El fin de semana');
      break;
    default:
      print('No es ningun dia');
      break;
  }
}

enum dia {
  lunes,
  martes,
  miercoles,
  jueves,
  viernes,
  sabado,
  domingo
}