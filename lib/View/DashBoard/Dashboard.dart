import 'package:flutter/material.dart';
import 'package:flutter_wraper_folder/Controller/DemoController.dart';
import 'package:get/get.dart';

class Dashbord extends StatefulWidget {
  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  var demoController = Get.put(DemoController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      print('dashbord.dart');
      return Scaffold(
        body: Container(
          color: Colors.amber,
          // child: Center(child: Text('DG TechyBusiness Welcome Screen')),
          child: InkWell(
              onTap: () {
                demoController.initializeApplicationState();
                // Get.to(Dashbord());
              },
              child: Center(child: Text(demoController.text.value))),
        ),
      );
    });
  }
}
