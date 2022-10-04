import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hotel_booking/Helpers/dataHotel.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List dummyData = List.generate(10000, (index) => '$index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Hello Mahmoud'),
                  Text('Find your Hotel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40), // Image radius
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4rsSzLimlQyniEtUV4-1raljzFhS45QBeAw&usqp=CAU',
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
          TextField(
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Search for Hotel',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Popular hotel',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          SingleChildScrollView(
              padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
            child: ListView.builder(
               shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                       Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbJQFDrEzUM_wl4-VOZW_E2MaA-Wcayo9SvA&usqp=CAU',
                     
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Row(
                        children: [
                          Text('data'),
                          Text('data'),
                        ],
                      ),
                   
                    ],
                  ),
                );
              },
              
             
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hote Packages',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('View All',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Container(
            height: 500, // give it a fixed height constraint

            // child ListView
            child: ListView.builder(itemBuilder: ((context, index) {
              return Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbJQFDrEzUM_wl4-VOZW_E2MaA-Wcayo9SvA&usqp=CAU',
                      width: 50,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Row(
                          children: [
                            Icon(
                              Icons.car_crash,
                              size: 20.0,
                            ),
                            Icon(
                              Icons.shower,
                              size: 20.0,
                            ),
                            Icon(
                              Icons.free_breakfast,
                              size: 20.0,
                            ),
                            Icon(
                              Icons.wifi,
                              size: 20.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Book now',
                              style: TextStyle(color: Colors.white),
                            )))
                  ],
                ),
              );
            })),
          ),
        ]),
      ),
    );
  }
}
