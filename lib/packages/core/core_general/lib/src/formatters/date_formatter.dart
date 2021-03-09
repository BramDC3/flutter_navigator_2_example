import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@LazySingleton()
class DateFormatter {
  static final _shortDateFormat = DateFormat('dd/MM/yyyy');

  String formatToShortDate(DateTime dateTime) {
    return _shortDateFormat.format(dateTime);
  }
}
