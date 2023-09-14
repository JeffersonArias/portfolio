class DateTimeNow {

  static final List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  static final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];


  static final int hour = DateTime.now().hour;
  static final int minute = DateTime.now().minute;
  static final int day = DateTime.now().weekday;
  static final int month = DateTime.now().month;
  static final int dayInMonth = DateTime.now().day;

}