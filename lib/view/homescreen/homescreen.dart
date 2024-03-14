// ignore_for_file: prefer_const_constructors

import 'package:apinotshow/controller/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    Provider.of<HomescreenController>(context, listen: false).generateModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<HomescreenController>(
      builder: (context, value, child) => ListView.builder(
        itemCount: value.personModelList.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            color: Colors.amber,
            child: Column(
              children: [
                Text(value.personModelList[index].name),
                Text(value.personModelList[index].age.toString()),
                Text(value.personModelList[index].occupation ?? ""),
                Text(value.personModelList[index].gender),
                Text(value.personModelList[index].martial_status),
                Text(value.personModelList[index].city)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
