part of dash_chat;

class DateBuilder extends StatelessWidget {
  DateBuilder({
    @required this.date,
    this.customDateBuilder,
    this.dateFormat,
  });

  final DateTime date;
  final Widget Function(String) customDateBuilder;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    if (customDateBuilder != null) {
      return customDateBuilder(
        dateFormat != null
            ? dateFormat.format(date)
            : DateFormat('yyyy-MM-dd').format(date),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.only(
          bottom: 8.0,
          top: 8.0,
          left: 13.0,
          right: 13.0,
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          dateFormat != null
              ? dateFormat.format(date)
              : DateFormat('yyyy-MMM-dd').format(date),
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      );
    }
  }
}
