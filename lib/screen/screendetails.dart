import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trave_app/datas/datas.dart';

class ScreenDetails extends StatelessWidget {
  ScreenDetails({Key? key, this.index}) : super(key: key);
  int? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Datas.datas[index!].image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.3, 1])),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                const Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        Datas.datas[index!].title,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        Datas.datas[index!].location,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    Datas.datas[index!].content,
                    maxLines: 4,
                    style: const TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: 4,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        unratedColor: Colors.white,
                        itemCount: 5,
                        itemSize: 14.0,
                        direction: Axis.horizontal,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        Datas.datas[index!].rate.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '₹15,000/person',
                        style: TextStyle(color: Colors.white),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.yellow),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
