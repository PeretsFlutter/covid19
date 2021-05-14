import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:covid19/model/globalDataModel.dart';

class World extends StatefulWidget {
  @override
  _WorldState createState() => _WorldState();
}

class _WorldState extends State<World> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: height * 0.01, horizontal: width * 0.02),
      width: width,
      height: height * 0.57,
      child: Stack(
        children: [
          Text(
            "\tGlobal COVID-19",
            style: TextStyle(
                fontSize: height * 0.04,
                fontWeight: FontWeight.w200,
                fontFamily: 'MyFont'),
          ),
          GlobalDataList(),
        ],
      ),
    );
  }
}

class GlobalDataList extends StatelessWidget {
  final formatter = NumberFormat("###,###");

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Positioned(
      top: height * 0.07,
      child: FutureBuilder<GlobalData>(
        future: null,
      ),
    );
  }
}
