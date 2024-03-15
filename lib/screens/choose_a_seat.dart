import 'package:booking_app/data/data.dart';
import 'package:booking_app/screens/flight.dart';

import 'package:booking_app/screens/widgets/seats_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatefulWidget {
  const ChooseSeatPage({super.key});

  @override
  State<ChooseSeatPage> createState() => ChooseSeatPageState();
}

class ChooseSeatPageState extends State<ChooseSeatPage> {

  String seatSelected = "";

  int halfSeats1 = seats1.length ~/ 2;
  int halfSeats2 = seats2.length ~/ 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          if(seatSelected == "") {
            const snackBar = SnackBar(
              content: Text('Please Select Your Seat!'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            return;
          }
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FlightPage(
              seat: seatSelected,
            );
          }));
        },
        child: Container(
          margin: const EdgeInsets.only(
            top: 25.0,
            bottom: 25.0,
            left: 15.0, 
            right: 15.0
          ),
          padding: const EdgeInsets.all(12.0),
          decoration: const BoxDecoration(
            color: Colors.deepOrangeAccent
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
        
              Text("CHECKOUT",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
        
              Text("Rp 2.000.000",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              )
        
            ],
          )
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, __) {
          return [

            const SliverAppBar(
              backgroundColor: Colors.deepOrangeAccent,
              elevation: 0.0,
              title: Text("CHOOSE A SEAT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16.0
                ),
              ),
              leading: CupertinoNavigationBarBackButton(
                color: Colors.white,
              ),
            )
            
          ];
        },
        body: RefreshIndicator.adaptive(
          color: Colors.deepOrange,
          onRefresh: () {
            return Future.sync(() {});
          },
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: [

              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                
                        Expanded(
                          flex: 2,
                          child: GridView.builder(
                            shrinkWrap: true,
                            itemBuilder: (_, int i) {
                              return GestureDetector(
                                onTap: () {
                                  if(seats1[i]["booked"]) return;
                          
                                  setState(() {
                                    seatSelected = seats1[i]["name"];
                                  });
                                },
                                child: SeatItem(
                                  selected: seatSelected,
                                  seat: seats1[i]
                                ),
                              );
                            },
                            itemCount: seats1.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              childAspectRatio: 1 / 0.95,
                            ),
                          )
                        ),

                        const SizedBox(width: 10.0),

                        Expanded(
                          flex: 1,
                          child:  GridView.builder(
                            shrinkWrap: true,
                            itemBuilder: (_, int i) {
                              return Center(
                                child: Text((i + 1).toString())
                              );
                            },
                            itemCount: halfSeats1,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              childAspectRatio: 1 / 0.85,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10.0),

                        Expanded(
                          flex: 2,
                          child:  GridView.builder(
                            shrinkWrap: true,
                            itemBuilder: (_, int i) {
                              return GestureDetector(
                                onTap: () {
                                  if(seats2[i]["booked"]) return;
                          
                                  setState(() {
                                    seatSelected = seats2[i]["name"];
                                  });
                                },
                                child: SeatItem(
                                  selected: seatSelected,
                                  seat: seats2[i]
                                ),
                              );
                            },
                            itemCount: seats2.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              childAspectRatio: 1 / 0.95,
                            ),
                          ),
                        ),

                      ],
                    )
                
                  ])
                ),
              ),
                
            ],
          ),
        )
      ),
    );
  }

}