import 'package:intl/intl.dart';

String formatDateTime(DateTime dateTime) {
  var formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(dateTime);
  return formattedDate;
}

String formatCurrentDateTime() {
  var now = DateTime.now();
  var formattedDate = DateFormat('yyyy-MM-dd').format(now);
  return formattedDate;
}

consultedTime(String dateTime) {
  DateTime dateT = DateTime.parse(dateTime);
  return "${getWeekFromNumber(dateT.weekday)} .${dateT.day} ${getMonthFromMonthNumber(dateT.month).substring(0, 3)} , ${dateT.year} ";
}

String getMonthFromMonthNumber(int month) {
  switch (month) {
    case 1:
      return "January";
      break;
    case 2:
      return "February";
      break;
    case 3:
      return "March";
      break;
    case 4:
      return "April";
      break;
    case 5:
      return "May";
      break;
    case 6:
      return "June";
      break;
    case 7:
      return "July";
      break;
    case 8:
      return "August";
      break;
    case 9:
      return "September";
      break;
    case 10:
      return "October";
      break;
    case 11:
      return "November";
      break;
    case 12:
      return "December";
      break;
    default:
      return "January";
      break;
  }
}

String getWeekFromNumber(int month) {
  switch (month) {
    case 1:
      return "Mon";
      break;
    case 2:
      return "Tue";
      break;
    case 3:
      return "Web";
      break;
    case 4:
      return "Thu";
      break;
    case 5:
      return "Fri";
      break;
    case 6:
      return "Sat";
      break;
    case 7:
      return "Sun";
      break;
    default:
      return "Sun";
      break;
  }
}

String getTimeDifference() {
  var birthday = DateTime(1967, 10, 12);
  var date2 = DateTime.now();
  var difference = date2.difference(birthday).inHours;
  return difference.toString();
}
