import 'package:intl/intl.dart';

String dateFormatter(DateTime date) {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(date);
}
