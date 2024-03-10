import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  final List<RoomData> data;

  CustomTable({required this.data});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FlexColumnWidth(1), // Room column
        1: FlexColumnWidth(1), // Status column
        2: FlexColumnWidth(2), // Guest name column
      },
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.blue),
          children: [
            TableCell(child: Center(child: Text('Room'))),
            TableCell(child: Center(child: Text('Status'))),
            TableCell(child: Center(child: Text('Guest Name'))),
          ],
        ),
        for (var room in data)
          TableRow(
            children: [
              TableCell(child: Center(child: Text(room.room))),
              TableCell(
                child: Center(
                  child: Text(
                    room.status,
                    style: TextStyle(
                      color: room.status.toLowerCase() == 'clean'
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                ),
              ),
              TableCell(child: Center(child: Text(room.guestName))),
            ],
          ),
      ],
    );
  }
}

class RoomData {
  final String room;
  final String status;
  final String guestName;

  RoomData({required this.room, required this.status, required this.guestName});
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Custom Table Example'),
      ),
      body: Center(
        child: CustomTable(
          data: [
            RoomData(room: '101', status: 'Occupied', guestName: 'John Doe'),
            RoomData(room: '102', status: 'Vacant', guestName: ''),
            RoomData(room: '103', status: 'Clean', guestName: 'Jane Smith'),
          ],
        ),
      ),
    ),
  ));
}
