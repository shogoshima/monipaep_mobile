import 'package:intl/intl.dart';
import 'package:monipaep_mobile/models/models.dart';

String dateFormatter(DateTime date) {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(date);
}

String symptomFormatter(List<Symptom> sintomas) {
  if (sintomas.isEmpty) return 'Sintomas sentidos: nenhum';

  final listaFormatada = sintomas.map((s) => '- ${s.name}').join('\n');
  return 'Sintomas sentidos:\n$listaFormatada';
}
