extension DateTimeExtensions on DateTime {
  DateTime get removeSeconds {
    return DateTime(year,month,day,hour,minute);
  }

  DateTime get removeMinutes {
    return DateTime(year,month,day,hour);
  }

  DateTime get removeTime {
    return DateTime(year,month,day);
  }
}
