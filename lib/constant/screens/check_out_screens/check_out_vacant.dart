import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospitalityappproject/widgets/custom_button.dart';
import 'package:hospitalityappproject/widgets/custom_checkbox.dart';
import 'package:hospitalityappproject/widgets/custom_dropdown.dart';
import 'package:hospitalityappproject/widgets/custom_textfield.dart';

class CheckOutVacantScreen extends StatefulWidget {
  @override
  State<CheckOutVacantScreen> createState() => _CheckInVacantScreenState();
}

class _CheckInVacantScreenState extends State<CheckOutVacantScreen> {
  TextEditingController _firstController = new TextEditingController();
  TextEditingController _lastController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.2,
          vertical: MediaQuery.of(context).size.width * 0.01),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'First',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: CustomTextField(
                        labelText: '', controller: _firstController)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                Text(
                  'Last',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: CustomTextField(
                        labelText: '', controller: _firstController)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                Text(
                  'Language',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: CustomDropdown(
                        items: ['English', 'Urdu'], hintText: 'English')),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dial Plan',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      " Emergency",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCheckbox(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Local",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCheckbox(),
                    SizedBox(
                      width: 10,
                    ),
                    Text("National", style: TextStyle(color: Colors.black)),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCheckbox(),
                    SizedBox(
                      width: 10,
                    ),
                    Text("International",
                        style: TextStyle(color: Colors.black)),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCheckbox(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomButton(
              containerColor: Colors.red,
              text: 'Check Out',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
