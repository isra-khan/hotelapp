import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final List<Room> rooms = [
    Room(roomNumber: 201, status: 'Clean', guestName: 'Ford, Bradley'),
    Room(roomNumber: 202, status: 'Clean', guestName: 'Vacant'),
    Room(roomNumber: 203, status: 'Not Clean', guestName: 'Nawaby, Ardavan'),
    Room(roomNumber: 204, status: 'Not Clean', guestName: 'Vacant'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              _buildHeaderRow(),
              // Rooms Data
              ...rooms.map((room) => _buildDataRow(room)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      children: [
        TableRow(
          children: [
            _buildHeaderCell('Room'),
            _buildHeaderCell('Status'),
            _buildHeaderCell('Guest Name'),
          ],
        ),
      ],
    );
  }

  Widget _buildDataRow(Room room) {
    Color rowColor = room.status == 'Clean' ? Colors.blue : Colors.red;
    return Table(
      border: TableBorder.all(color: Colors.grey),
      children: [
        TableRow(
          children: [
            _buildDataCell('${room.roomNumber}', rowColor),
            _buildDataCell('${room.status}', rowColor),
            _buildDataCell('${room.guestName}', rowColor),
          ],
        ),
      ],
    );
  }

  Widget _buildHeaderCell(String text) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.grey[300],
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  Widget _buildDataCell(String text, Color color) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: color),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class Room {
  final int roomNumber;
  final String status;
  final String guestName;

  Room({
    required this.roomNumber,
    required this.status,
    required this.guestName,
  });
}
