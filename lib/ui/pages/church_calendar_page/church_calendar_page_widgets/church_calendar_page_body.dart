import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class ChurchCalendarPageBody extends StatefulWidget {
  const ChurchCalendarPageBody({super.key});

  @override
  State<ChurchCalendarPageBody> createState() => _ChurchCalendarPageBodyState();
}

class _ChurchCalendarPageBodyState extends State<ChurchCalendarPageBody> {
  DateTime parseDate(String dateString) {
    List<String> parts = dateString.split('.');

    if (parts.length == 3) {
      int year = int.tryParse(parts[0]) ?? 0;
      int month = int.tryParse(parts[1]) ?? 0;
      int day = int.tryParse(parts[2]) ?? 0;

      if (year > 0 && month >= 1 && month <= 12 && day >= 1 && day <= 31) {
        // DateTime 객체 생성
        return DateTime(year, month, day);
      }
    }

    // 유효하지 않은 형식이라면 기본값으로 현재 날짜 반환
    return DateTime.now();
  }

  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  Map<DateTime, List<Map<String, dynamic>>> events = {};
  List<Map<String, dynamic>> calendarList = [
    {
      "date": "2024.01.01",
      "title": "[신년 감사예배]",
      "time": "오전 10:00",
      "place": "1층 대예배실"
    },
    {
      "date": "2024.01.13",
      "title": "영어예배부 어린이 겨울캠프",
      "time": "오전 10:00",
      "place": "주차장"
    },
    {
      "date": "2024.01.02",
      "title": "길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어길어",
      "time": "오전 10:00",
      "place": "1층 대예배실"
    },
  ];
  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  void _loadEvents() {
    for (var event in calendarList) {
      DateTime eventDate = parseDate(event['date']);

      events.putIfAbsent(eventDate, () => []);

      events[eventDate]!.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                child: TableCalendar(
                  locale: "ko-KR",
                  calendarBuilders: CalendarBuilders(
                    dowBuilder: (context, day) {
                      switch (day.weekday) {
                        case 1:
                          return Center(
                            child: Text(
                              '월',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 2:
                          return Center(
                            child: Text(
                              '화',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 3:
                          return Center(
                            child: Text(
                              '수',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 4:
                          return Center(
                            child: Text(
                              '목',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 5:
                          return Center(
                            child: Text(
                              '금',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 6:
                          return Center(
                            child: Text(
                              '토',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 7:
                          return Center(
                            child: Text(
                              '일',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                      }
                    },
                    todayBuilder: (context, date, _) {
                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: kEAColor,
                          ),
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '${date.day}',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    selectedBuilder: (context, date, focusedDay) {
                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: k96Color,
                          ),
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '${date.day}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                    // markerBuilder: (context, day, events) {
                    //   return Icon(
                    //     Icons.circle,
                    //     size: 5,
                    //     color: Colors.red,
                    //   );
                    // },
                  ),
                  eventLoader: (day) {
                    return events[day] ?? [];
                  },
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now().subtract(Duration(days: 365)),
                  lastDay: DateTime.now().add(Duration(days: 365)),
                  onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                    setState(() {
                      this.selectedDay = selectedDay;
                      this.focusedDay = focusedDay;
                    });
                  },
                  selectedDayPredicate: (DateTime day) {
                    return isSameDay(selectedDay, day);
                  },
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(color: kEEColor),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "이번달 일정",
            style: TextStyle(
                color: k3DColor, fontSize: size16, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: events.keys.length,
            itemBuilder: (context, index) {
              DateTime eventDate = events.keys.elementAt(index);
              List<Map<String, dynamic>> eventsOnDate = events[eventDate]!;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('yyyy.MM.dd').format(eventDate),
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: size14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    for (var event in eventsOnDate)
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: k3D45Color,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Text(
                                      event["title"],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    event["time"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                event["place"],
                                style: TextStyle(
                                  color: kCCColor,
                                  fontSize: size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
      ],
    );
  }
}
