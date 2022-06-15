import 'package:codeone/style/app_style.dart';
import 'package:flutter/cupertino.dart';
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
  DateTime restDay = DateTime.now();

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
      backgroundColor: AppStyle.mainColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                  color: AppStyle.shadowMainColor,
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(0.0, 2.0)
              ),],
                color: AppStyle.secondColor,
                borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(28),
                bottomLeft: Radius.circular(28)
            )),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

            child: TableCalendar(
              locale: 'pt_BR',
                focusedDay: selectedDay,
                firstDay: DateTime(1900),
                lastDay: DateTime(2500),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  selectedDay = selectedDay;
                  focusedDay = focusedDay;
                  restDay = restDay;
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
                outsideDaysVisible: false,
                defaultTextStyle: TextStyle(color: Colors.white),
                weekendTextStyle: TextStyle(color: Colors.white),
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Color(0xff22C1C1),
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(color: Colors.white)
              ),
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
                leftChevronVisible: false,
                rightChevronVisible: false,
                formatButtonVisible: false,
                titleCentered: false,
                formatButtonShowsNext: true,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 280,
            margin: EdgeInsets.only(top: 3, left: 30, right: 30),
            child: ListView(
                scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    Text("12:30", style: TextStyle(color: Color(0xffADB5BD), fontWeight: FontWeight.w500),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Aula de Português", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xff7CD9D9),
                            Color(0xff1db7b7),
                          ],
                        ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 83.05,
                      width: 300,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("12:30", style: TextStyle(color: Color(0xffADB5BD), fontWeight: FontWeight.w500),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Aula de Português", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff7CD9D9),
                              Color(0xff1db7b7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 83.05,
                      width: 300,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("12:30", style: TextStyle(color: Color(0xffADB5BD), fontWeight: FontWeight.w500),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Aula de Português", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff7CD9D9),
                              Color(0xff1db7b7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 83.05,
                      width: 300,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("12:30", style: TextStyle(color: Color(0xffADB5BD), fontWeight: FontWeight.w500),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Aula de Português", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff7CD9D9),
                              Color(0xff1db7b7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 83.05,
                      width: 300,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("12:30", style: TextStyle(color: Color(0xffADB5BD), fontWeight: FontWeight.w500),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Aula de Português", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff7CD9D9),
                              Color(0xff1db7b7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 83.05,
                      width: 300,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("12:30", style: TextStyle(color: Color(0xffADB5BD), fontWeight: FontWeight.w500),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Aula de Português", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff7CD9D9),
                              Color(0xff1db7b7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 83.05,
                      width: 300,
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: AppStyle.secondColor,
        elevation: 2,
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
              backgroundColor: Color(0xffF1F3F5),
              context: context,
              builder: (context) => Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Column(
                   children: [
                     TextFormField(),
                     TextFormField(),
                     TextFormField(),
                   ],

                  ),
                ),
              )
          );
        },
        child: Icon(Icons.add),
      ),
    );

  }
}