import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lykiq_vehcle/add_vehcle.dart';

class Vehicle extends StatefulWidget {
  String value6;
  String value7;
  String value8;
  Vehicle(
      {Key? key,
      required this.value6,
      required this.value7,
      required this.value8})
      : super(key: key);

  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  String value6='';
  String value7='';
  String value8='';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                  icon: Icon(
                Icons.directions_car,
                size: 40,
              )),
              Tab(
                  icon: Icon(
                Icons.directions_bike,
                size: 40,
              )),
            ],
          ),
          title: Text(
            "Vehicle Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Center(
                child: Card(
                  color: Colors.green,
                  // clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 300,
                    height: 200,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CloseButton(
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Center(child: Text(widget.value6)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Add()),
              );
            },
            child: Container(
              height: 60,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Vehicles",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
