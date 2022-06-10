import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:codeone/modules/event.dart';

class CalanderPage extends StatefulWidget {
  const CalanderPage({Key? key}) : super(key: key);

  @override
  State<CalanderPage> createState() => _CalanderPageState();
}

class _CalanderPageState extends State<CalanderPage> {
  late Map<DateTime, List<Event>> selectedEvents;

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();

  @override
  void initState(){
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.secondColor,
      appBar: AppBar(
        title: Container(
          width: 120,
          height: 60,
          child: Image.asset('assets/images/logo-educacao.png',),
        ),
        backgroundColor: AppStyle.secondColor,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,
            size: 25,
            color: Colors.white,
          ),
          ),

          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined,
            size: 25,
            color: Colors.white,
          ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.person,
            size: 25,
            color: Colors.white,
          ),
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            TableCalendar(
              locale: 'pt_BR',
              focusedDay: selectedDay,
              firstDay: DateTime(1900),
              lastDay: DateTime(2200),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  selectedDay = selectedDay;
                  focusedDay = focusedDay;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.sunday,
              daysOfWeekVisible: true,
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
              },

              eventLoader: _getEventsfromDay,

              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
              ),
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(color: Colors.white),
                leftChevronVisible: false,
                rightChevronVisible: false,
                formatButtonVisible: false,
                titleCentered: false,
                formatButtonShowsNext: true,
              ),
            ),
            ..._getEventsfromDay(selectedDay).map((Event event) => Container(
              color: Colors.white,
              child: ListTile(title: Text(event.title),),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Add Event"),
            content: TextFormField(
              controller: _eventController,
            ),
            actions: [
              TextButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  if (_eventController.text.isEmpty) {

                  } else {
                    if (selectedEvents[selectedDay] != null) {
                      selectedEvents[selectedDay]?.add(
                        Event(title: _eventController.text),
                      );
                    } else {
                      selectedEvents[selectedDay] = [
                        Event(title: _eventController.text)
                      ];
                    }

                  }
                  Navigator.pop(context);
                  _eventController.clear();
                  setState((){});
                  return;
                },
              ),
            ],
          ),
        ),
        label: Text("Add Event"),
        icon: Icon(Icons.add),
      ),

    );

  }
}