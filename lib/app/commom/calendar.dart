import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  final DateTime selecteDate;
  final DateTime? endRangeSelected;
  final DateTime? startRangeSelected;
  final DateTime? focusDay;
  final void Function(DateTime selectDay,DateTime focusDay,) onDateSelect;
  final void Function(DateTime? selectDay,DateTime? focusDay, DateTime? c,
  )? clickInRange;
  Calendar({
    Key? key,
    required this.onDateSelect,
    required this.selecteDate,
    this.endRangeSelected,
    this.clickInRange,
    this.startRangeSelected,
    this.focusDay,
  }) : super(key: key);
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    print('onDateSelect ${widget.onDateSelect}');
    print('selecteDate ${widget.selecteDate}');
    print('endRangeSelected ${widget.endRangeSelected}');
    print('startRangeSelected ${widget.startRangeSelected}');
    print('focusDay ${widget.focusDay}');
    print('rangeStartDay ${widget.startRangeSelected}');
    print('rangeEndDay ${widget.endRangeSelected}');

    return TableCalendar(
      focusedDay: widget.focusDay!,
      firstDay: DateTime(2015),
      lastDay: DateTime(2050),
      onFormatChanged: (CalendarFormat _format) {
        setState(() {
          print('_format ${_format}');
          format = _format;
        });
      },
      //day changed
      startingDayOfWeek: StartingDayOfWeek.sunday,
      onDaySelected: widget.onDateSelect,
      rangeStartDay: widget.startRangeSelected,
      rangeEndDay: widget.endRangeSelected,
      rangeSelectionMode: RangeSelectionMode.enforced,
      onRangeSelected: widget.clickInRange,
      //to style the calendar
      calendarStyle: CalendarStyle(
        selectedDecoration: BoxDecoration(
            color: Colors.deepOrange, 
            shape: BoxShape.circle
            ),
        selectedTextStyle: TextStyle(color: Colors.white),
        /*todayDecoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle
        ),*/
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false, 
        titleCentered: true
      ),
    );
  }
}
