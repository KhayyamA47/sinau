import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';

class NotificationWidget extends StatefulWidget {
  final Function function;

  const NotificationWidget({Key key, this.function}) : super(key: key);
  @override
  _NotificationWidgetState createState() => _NotificationWidgetState(function);
}

class _NotificationWidgetState extends State<NotificationWidget> {
  Function function;
  _NotificationWidgetState(this.function);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.add_alert,
          color: Constants.notificationButtonColor,
        ),
        onPressed: function);
  }
}
