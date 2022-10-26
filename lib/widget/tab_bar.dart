import 'package:flutter/material.dart';
import 'package:trave_app/datas/datas.dart';
import 'package:trave_app/screen/home.dart';

class Tabbarwidget extends StatelessWidget {
  const Tabbarwidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
              color:
                  ScreenHome.currentIndex != index ? Colors.grey : Colors.green,
              width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                Datas.tabModel[index].image,
                width: 30,
                height: 30,
              ),
              Text(
                Datas.tabModel[index].title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
