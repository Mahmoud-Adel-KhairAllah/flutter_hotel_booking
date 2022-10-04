import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/Model/hotel.dart';

List<Hotel> listHotels = [
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),
  Hotel(name: 'name', image: 'image'),

];
class Listh extends StatelessWidget {
  const Listh({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
          scrollDirection: Axis.horizontal,
          itemCount: listHotels.length,
          itemBuilder: (context, index) {
            return Card(child: Column(children: [
              Image.network('src'),
              Text('data'),
              Text('data'),
    Row(children: [
      Text('data'),
      Text('data')
    ],)
            ]),);
          }),
    );
  }
}
