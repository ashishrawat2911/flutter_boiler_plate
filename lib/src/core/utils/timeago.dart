import 'package:timeago/timeago.dart' as timeago;

String timeAgo(DateTime dateTime) {
  final fifteenAgo = dateTime.subtract(new Duration(minutes: 15));
  return timeago.format(fifteenAgo);
}
