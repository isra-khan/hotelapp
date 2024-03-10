import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospitalityappproject/constant/screens/check_in_screens/check_in_occupied.dart';
import 'package:hospitalityappproject/constant/screens/check_in_screens/check_in_vacant.dart';
import 'package:hospitalityappproject/constant/screens/check_out_screens/check_out_occupied.dart';
import 'package:hospitalityappproject/constant/screens/check_out_screens/check_out_vacant.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _ContainerSwitchScreenState createState() => _ContainerSwitchScreenState();
}

class _ContainerSwitchScreenState extends State<CheckOutScreen> {
  bool isContainer1Vacant = true;
  bool isContainer2Vacant = false;
  bool selectedContainerIs1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "  Room 202:                                                  ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Status :     ",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w800),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainerIs1 = true;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      decoration: BoxDecoration(
                        color: selectedContainerIs1
                            ? Colors.green
                            : Colors.transparent,
                      ),
                      child: Text(
                        'Vacant',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainerIs1 = false;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      decoration: BoxDecoration(
                        color: selectedContainerIs1
                            ? Colors.transparent
                            : Colors.red,
                      ),
                      child: Text(
                        'Occupied',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: selectedContainerIs1
            ? CheckOutVacantScreen()
            : CheckOutOccupiedScreen());
  }
}
