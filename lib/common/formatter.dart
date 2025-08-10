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

int getIsoWeekNumber(DateTime date) {
  // Garantir que estamos lidando apenas com a data (sem hora)
  final current = DateTime.utc(date.year, date.month, date.day);

  // Ajustar para quinta-feira da semana atual
  final dayOfWeek = current.weekday; // Monday=1 ... Sunday=7
  final thursday = current.add(Duration(days: 4 - dayOfWeek));

  // Começo do ano da quinta-feira
  final firstThursday = DateTime.utc(thursday.year, 1, 4);

  // Número da semana ISO
  return ((thursday.difference(firstThursday).inDays) / 7).floor() + 1;
}
