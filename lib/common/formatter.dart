import 'package:intl/intl.dart';
import 'package:monipaep_mobile/models/models.dart';

String dateFormatter(DateTime date) {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(date);
}

DateTime parseDate(String date) {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  return formatter.parse(date);
}

String symptomFormatter(List<Symptom> sintomas) {
  if (sintomas.isEmpty) return 'Sintomas sentidos: nenhum';

  final listaFormatada = sintomas.map((s) => '- ${s.name}').join('\n');
  return 'Sintomas sentidos:\n$listaFormatada';
}

int getWeekNumber(DateTime date) {
  // ISO 8601 week date (week starts on Monday, first week has the first Thursday)
  final formatter = DateFormat("w"); // "w" = week of the year
  return int.parse(formatter.format(date));
}

