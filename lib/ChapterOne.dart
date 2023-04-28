import 'package:flutter/material.dart';
import 'package:real_estate/estate-constants.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ChapterOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Discover',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    color: primaryColor),
              ),
              SizedBox(
                height: 16.0,
              ),
              //toggle button
              ToggleSwitch(
                minWidth: 80.0,
                minHeight: 25.0,
                initialLabelIndex: 1,
                cornerRadius: 15.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Color(0x66c6e1eb),
                inactiveFgColor: primaryColor,
                totalSwitches: 2,
                labels: ['For Sale', 'For Rent'],
                activeBgColors: [
                  [primaryColor],
                  [primaryColor]
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'search',
              )),
            ]),
          ),

          //image house
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/house.png',
              alignment: Alignment.bottomCenter,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
