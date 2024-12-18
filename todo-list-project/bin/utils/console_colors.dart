class ConsoleColors {
  // Colores de texto
  static const String reset = '\x1B[0m';
  static const String black = '\x1B[30m';
  static const String red = '\x1B[31m';
  static const String green = '\x1B[32m';
  static const String yellow = '\x1B[33m';
  static const String blue = '\x1B[34m';
  static const String magenta = '\x1B[35m';
  static const String cyan = '\x1B[36m';
  static const String white = '\x1B[37m';

  // Colores brillantes
  static const String brightRed = '\x1B[91m';
  static const String brightGreen = '\x1B[92m';
  static const String brightYellow = '\x1B[93m';
  static const String brightBlue = '\x1B[94m';
  static const String brightMagenta = '\x1B[95m';
  static const String brightCyan = '\x1B[96m';
  static const String brightWhite = '\x1B[97m';

  // Estilos
  static const String bold = '\x1B[1m';
  static const String underline = '\x1B[4m';

  // Método de utilidad para envolver texto en color
  static String colorize(String text, String color) {
    return '$color$text$reset';
  }

  // Métodos de utilidad específicos
  static String error(String text) {
    return colorize(text, red);
  }

  static String success(String text) {
    return colorize(text, green);
  }

  static String warning(String text) {
    return colorize(text, yellow);
  }

  static String info(String text) {
    return colorize(text, cyan);
  }

  static String header(String text) {
    return colorize(bold + text, brightBlue);
  }

  // Métodos para colores brillantes
  static String brightWhiteText(String text) {
    return colorize(text, brightWhite);
  }

  static String brightYellowText(String text) {
    return colorize(text, brightYellow);
  }

  static String brightCyanText(String text) {
    return colorize(text, brightCyan);
  }

  static String brightMagentaText(String text) {
    return colorize(text, brightMagenta);
  }

  // Método para color cyan normal
  static String cyanText(String text) {
    return colorize(text, cyan);
  }
}
