import 'dart:io';

void main() {
  // Solicita el total de la cuenta
  stdout.write('Introduce el total de la cuenta: ');
  String? totalInput = stdin.readLineSync();
  double? total = double.tryParse(totalInput ?? '');

  // Valida el total
  if (total == null || total < 0) {
    print('❌ Error: Ingresa un número válido para el total.');
    return;
  }

  // Solicita el porcentaje de propina
  stdout.write('Introduce el porcentaje de propina (10, 15, 20): ');
  String? tipInput = stdin.readLineSync();
  double? tipPercent = double.tryParse(tipInput ?? '');

  if (tipPercent == null || tipPercent < 0) {
    print('❌ Error: Ingresa un porcentaje válido.');
    return;
  }

  // Solicita el número de personas
  stdout.write('Número de personas: ');
  String? peopleInput = stdin.readLineSync();
  int? numberOfPeople = int.tryParse(peopleInput ?? '');

  if (numberOfPeople == null || numberOfPeople <= 0) {
    print('❌ Error: Ingresa un número válido de personas.');
    return;
  }

  // Cálculos
  double tipAmount = total * (tipPercent / 100);
  double totalWithTip = total + tipAmount;
  double amountPerPerson = totalWithTip / numberOfPeople;

  // Resultados
  print('\n🧾 Total con propina: ${totalWithTip.toStringAsFixed(2)} \$');
  print('💵 Cada persona paga: ${amountPerPerson.toStringAsFixed(2)} \$');
}
