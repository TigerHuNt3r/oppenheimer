import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hazi_gyak/controllers/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            body: Center(
                child: Image.asset(
              'images/oppenheimer.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ).blurred(
              blur: 10,
              overlay: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 250, child: Image.asset('images/oppenheimer.jpg')),
                  Text(
                    "Oppenheimer",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("2023"),
                  SizedBox(
                    width: 250,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: controller.getStars()),
                  ),
                  SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120,
                          child: CupertinoButton(
                            color: Colors.red,
                            padding: EdgeInsets.zero,
                            child: Icon(Icons.remove),
                            onPressed: () {
                              controller.csokkentsdCsillagDbt();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: CupertinoButton(
                            color: Colors.green,
                            padding: EdgeInsets.zero,
                            child: Icon(Icons.add),
                            onPressed: () {
                              controller.noveldCsillagDbt();
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
          );
        });
  }
}
