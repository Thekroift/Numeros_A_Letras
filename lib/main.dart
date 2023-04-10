converNumToLetras(double numero) {
  String num = '${numero}0';
  String entero = num.substring(0, num.indexOf('.'));
  double n = double.parse(entero);
  String decimal = num.substring(num.indexOf('.') + 1);

  var res =
      '${numeroALetras(n.round())} PESOS ${decimal.substring(0, 2)}/100 M.N.';
  return res;
}

numeroALetras(int value) {
  String? text;

  if (value == 0) {
    text = 'CERO';
  } else if (value == 1) {
    text = 'UNO';
  } else if (value == 2) {
    text = 'DOS';
  } else if (value == 3) {
    text = 'TRES';
  } else if (value == 4) {
    text = 'CUATRO';
  } else if (value == 5) {
    text = 'CINCO';
  } else if (value == 6) {
    text = 'SEIS';
  } else if (value == 7) {
    text = 'SIETE';
  } else if (value == 8) {
    text = 'OCHO';
  } else if (value == 9) {
    text = 'NUEVE';
  } else if (value == 10) {
    text = 'DIEZ';
  } else if (value == 11) {
    text = 'ONCE';
  } else if (value == 12) {
    text = 'DOCE';
  } else if (value == 13) {
    text = 'TRECE';
  } else if (value == 14) {
    text = 'CATORCE';
  } else if (value == 15) {
    text = 'QUINCE';
  } else if (value < 20) {
    text = 'DIECI${numeroALetras(value - 10)}';
  } else if (value == 20) {
    text = 'VEITE';
  } else if (value < 30) {
    text = 'VEINTI${numeroALetras(value - 20)}';
  } else if (value == 30) {
    text = 'TREITA';
  } else if (value == 40) {
    text = 'CUARENTA';
  } else if (value == 50) {
    text = 'CINCUENTA';
  } else if (value == 60) {
    text = 'SESENTA';
  } else if (value == 70) {
    text = 'SETENTA';
  } else if (value == 80) {
    text = 'OCHENTA';
  } else if (value == 90) {
    text = 'NOVENTA';
  } else if (value < 100) {
    final d = value / 10;
    final div = double.parse('${d.floor()}0');
    text = '${numeroALetras(div.floor())} Y ${numeroALetras(value % 10)}';
  } else if (value == 100) {
    text = 'CIEN';
  } else if (value < 200) {
    text = 'CIENTO ${numeroALetras(value - 100)}';
  } else if (value == 200 ||
      value == 300 ||
      value == 400 ||
      value == 600 ||
      value == 800) {
    final d = value / 100;
    text = '${numeroALetras(d.floor())}CIENTOS';
  } else if (value == 500) {
    text = 'QUINIENTOS';
  } else if (value == 700) {
    text = 'SETECIENTOS';
  } else if (value == 900) {
    text = 'NOVECIENTOS';
  } else if (value < 1000) {
    final d = value / 100;
    final div = double.parse('${d.floor()}00');
    text = '${numeroALetras(div.floor())} ${numeroALetras(value % 100)}';
  } else if (value == 1000) {
    text = 'MIL';
  } else if (value < 2000) {
    text = 'MIL ${numeroALetras(value % 1000)}';
  } else if (value < 1000000) {
    final d = value / 1000;
    text = '${numeroALetras(d.floor())} MIL';
    if (value % 1000 > 0) {
      text = '$text ${numeroALetras(value % 1000)}';
    }
  } else if (value == 1000000) {
    text = 'UN MILLON';
  } else if (value < 2000000) {
    final d = value % 1000000;
    text = 'UN MILLOM ${numeroALetras(d.floor())}';
  } else if (value < 1000000000000) {
    final d = value / 1000000;
    text = '${numeroALetras(d.floor())} MILLONES';
    final div = value - d.floor() * 1000000;
    if (div > 0) {
      final d = value / 1000000;
      final div = value - d.floor() * 1000000;
      text = '$text ${numeroALetras(div.floor())}';
    }
  }
  return text;
}
