import 'package:codeone/modules/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../style/app_style.dart';


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
    var size = MediaQuery.of(context).size;
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
          IconButton(onPressed: () {}, icon: Icon(Icons.search,
            size: 25,
            color: Colors.white,
          ),
          ),

          IconButton(
            onPressed: () {}, icon: Icon(Icons.notifications_none_outlined,
            size: 25,
            color: Colors.white,
          ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.person,
            size: 25,
            color: Colors.white,
          ),
          ),
        ],
      ),
      backgroundColor: AppStyle.mainColor,
      resizeToAvoidBottomInset : false,
      body: LayoutBuilder(
          builder: (context,constraints) {
            if(constraints.maxWidth < 400) {
              return Container(
                width: constraints.maxWidth,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                              color: AppStyle.shadowMainColor,
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0.0, 2.0)
                          ),
                          ],
                          color: AppStyle.secondColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(28),
                              bottomLeft: Radius.circular(28)
                          )),
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.015,
                          right: MediaQuery.of(context).size.width * 0.015),
                    ),
                    Expanded(
                      child: Container(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight/2,
                        decoration: BoxDecoration(
                            color: Color(0xff4263EB),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28))
                        ),
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
                          daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle: TextStyle(color: Colors.white),
                              weekendStyle: TextStyle(color: Colors.white)),
                          selectedDayPredicate: (DateTime date) {
                            return isSameDay(selectedDay, date);
                          },
                          headerStyle: HeaderStyle(
                            headerPadding: EdgeInsets.only(left: 20, bottom: 10),
                            titleTextStyle: TextStyle(
                                color: Colors.white, fontSize: 18,
                                fontWeight: FontWeight.w500),
                            leftChevronVisible: false,
                            rightChevronVisible: false,
                            formatButtonVisible: false,
                            titleCentered: false,
                            formatButtonShowsNext: true,
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      physics: ClampingScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.002,
                            bottom: MediaQuery.of(context).size.height * 0.002),
                        height: constraints.maxHeight /3,
                        width: constraints.maxWidth,
                        child: Center(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(
                                children: [
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                      ),
                    ),

                  ],
                ),
              );
            } else {
              return Container(
                width: constraints.maxWidth,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                              color: AppStyle.shadowMainColor,
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0.0, 2.0)
                          ),
                          ],
                          color: AppStyle.secondColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(28),
                              bottomLeft: Radius.circular(28)
                          )),
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.015,
                          right: MediaQuery.of(context).size.width * 0.015),
                    ),
                    Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.55,
                      decoration: BoxDecoration(
                          color: Color(0xff4263EB),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28))
                      ),
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
                          selectedTextStyle: TextStyle(
                              color: Colors.white),
                        ),
                        daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle: TextStyle(color: Colors.white),
                            weekendStyle: TextStyle(color: Colors.white)),
                        selectedDayPredicate: (DateTime date) {
                          return isSameDay(selectedDay, date);
                        },
                        headerStyle: HeaderStyle(
                          headerPadding: EdgeInsets.only(left: 20, bottom: 10),
                          titleTextStyle: TextStyle(
                            color: Colors.white, fontSize: 18,
                            fontWeight: FontWeight.w500,),
                          leftChevronVisible: false,
                          rightChevronVisible: false,
                          formatButtonVisible: false,
                          titleCentered: false,
                          formatButtonShowsNext: true,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      physics: ClampingScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.002,
                            left: 30,
                            bottom: MediaQuery.of(context).size.height * 0.002),
                        height: constraints.maxHeight * 0.45,
                        width: constraints.maxWidth,
                        child: Center(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(
                                children: [
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                                  Text("12:30", style: TextStyle(color: Color(0xffADB5BD),
                                      fontWeight: FontWeight.w500),),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10),
                                      child: Text("Aula de Português", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
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
                      ),
                    ),
                  ],
                ),
              );
            }


          }

      ),
      floatingActionButton: FloatingActionButton(
        focusColor: AppStyle.secondColor,
        elevation: 2,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            backgroundColor: Color(0xffF1F3F5),
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return FractionallySizedBox(
                heightFactor: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 40),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top:30, bottom: 10),
                          child:Text("Título", style: GoogleFonts.roboto(
                              color: Color(0xff403B91),
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),),
                        ),
                        SizedBox(
                          child: TextField(
                            autofocus: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0,),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 3,),
                        Container(
                          padding: EdgeInsets.only(top:10, bottom: 10),
                          child:Text("Descrição", style: GoogleFonts.roboto(
                              color: Color(0xff403B91),
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),),
                        ),
                        SizedBox(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0,),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 3,),
                        Container(
                          padding: EdgeInsets.only(top:10, bottom: 10),
                          child:Text("Data", style: GoogleFonts.roboto(
                              color: Color(0xff403B91),
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),),
                        ),
                        SizedBox(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0,),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top:10, bottom: 10),
                                child:Text("Inicio", style: GoogleFonts.roboto(
                                    color: Color(0xff403B91),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),),
                              ),
                              SizedBox(width:MediaQuery.of(context).size.width * 0.32,),
                              Container(
                                padding: EdgeInsets.only(top:10, bottom: 10),
                                child:Text("Fim", style: GoogleFonts.roboto(
                                    color: Color(0xff403B91),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 130,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0,),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width:MediaQuery.of(context).size.width * 0.05,),
                              SizedBox(
                                width: 120,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0,),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 3, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              ElevatedButton(onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                    fixedSize: Size(130, 50), primary: Color(0xffBAC8FF),
                                  ),
                                  child: Text('Cancelar', style: TextStyle(
                                      color: Color(0xff4263EB),
                                      fontSize: 18,
                                      fontFamily: 'Roboto'),)),
                              SizedBox(width:MediaQuery.of(context).size.width * 0.05,),
                              ElevatedButton(onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                    fixedSize: Size(130, 50), primary: Color(0xff4263EB),
                                  ),
                                  child: Text('Confirmar', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),)),
                            ],
                          ),
                        )


                      ],

                    ),
                  ),
                ),
              );

            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}