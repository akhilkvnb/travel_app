import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trave_app/datas/datas.dart';

class Cardwidget extends StatefulWidget {
  Cardwidget({Key? key, this.index}) : super(key: key);
  int? index;

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  bool fvButtom = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Datas.datas[widget.index!].image),
            fit: BoxFit.cover),
        color: Colors.red,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: fvButtom == false
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              fvButtom = true;
                            });
                          },
                          icon: const Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.grey,
                            size: 18,
                          ))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              fvButtom = false;
                            });
                          },
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 18,
                          )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 11, right: 10, top: 60),
            child: Text(
              Datas.datas[widget.index!].title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                Text(
                  Datas.datas[widget.index!].location,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
            child: Row(
              children: [
                RatingBarIndicator(
                  rating: 4,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 14.0,
                  direction: Axis.horizontal,
                ),
                Text(
                  Datas.datas[widget.index!].rate.toString(),
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
      width: 150.w,
    );
  }
}
