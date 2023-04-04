import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Kalender extends StatefulWidget {
  @override
  _KalenderState createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  // Inisialisasi zona waktu WIB, WITA, dan WIT
  TimeZone timeZoneWIB = TimeZone('WIB', Duration(hours: 0));
  TimeZone timeZoneWITA = TimeZone('WITA', Duration(hours: 1));
  TimeZone timeZoneWIT = TimeZone('WIT', Duration(hours: 2));
  var waktu = ['WIB','WITA','WIT'];
  String dropdownval = 'WIB';

  @override
  Widget build(BuildContext context) {
    // Buat objek DateTime dengan waktu saat ini
    DateTime now = DateTime.now();

    // Buat objek formatter untuk format tanggal dan waktu
    DateFormat dateFormat = DateFormat('EEEE, dd MMMM yyyy');
    DateFormat timeFormat = DateFormat('HH:mm:ss');

    return  Scaffold(
        appBar: AppBar(
          title: Text('Menu Kalender'),
        ),
        body: SafeArea(
          child: (
        Column(
          children: [
            SizedBox(height: 20,),
            Container(
              color: Colors.blueGrey,
              height: 40,
              width: 90,
              child: DropdownButton(
                dropdownColor: Colors.blueGrey,
                iconEnabledColor: Colors.red,
                value: dropdownval,
                borderRadius: BorderRadius.circular(20),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: waktu.map((String waktu) {
                  return DropdownMenuItem(
                    value: waktu,
                    child: Text(
                      waktu,
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownval = newValue!;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            // Tampilkan waktu saat ini di zona waktu WIB (UTC+7)
            Text('Waktu',
              style:
              TextStyle(fontSize: 20),),
            Text((dropdownval == 'WIB')?dateFormat.format(timeZoneWIB.convert(now)): (dropdownval == 'WITA')?dateFormat.format(timeZoneWITA.convert(now)): dateFormat.format(timeZoneWIT.convert(now)),
            style:
              TextStyle(fontSize: 30),),
            Text((dropdownval == 'WIB')?timeFormat.format(timeZoneWIB.convert(now)): (dropdownval == 'WITA')?timeFormat.format(timeZoneWITA.convert(now)): timeFormat.format(timeZoneWIT.convert(now)) ,
              style:
              TextStyle(fontSize: 30),),
            SizedBox(height: 16),

            
            TableCalendar(focusedDay: now, firstDay: DateTime.utc(2000,1,1), lastDay: DateTime.utc(2100,1,1))
          ],
        )
        ),
        ),
      );

  }
}

class TimeZone {
  final String name;
  final Duration offset;

  TimeZone(this.name, this.offset);

  DateTime convert(DateTime dateTime) {
    return dateTime.add(offset);
  }
}