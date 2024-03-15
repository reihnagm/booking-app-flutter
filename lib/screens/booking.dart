import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectSeats extends StatefulWidget {
  const SelectSeats({super.key});

  @override
  State<SelectSeats> createState() => SelectSeatsState();
}

class SelectSeatsState extends State<SelectSeats> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.grey
        ),
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent[800]
          ),
          onPressed: () {}, 
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [

              Text("Checkout",
                style: TextStyle(
                  color: Colors.white
                ),
              ),

              Text("Rp. 50")

            ],
          )
        )
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              forceElevated: true,
              backgroundColor: Colors.transparent,
              title: Text("CHOOSE A SEAT",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0
                ),
              ),
              leading: CupertinoNavigationBarBackButton(
                color: Colors.black,
              ),
            )
          ];
        },
        body: RefreshIndicator(
          onRefresh: () {
            return Future.sync(() {
              
            });
          },
          child: CustomScrollView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              
              
                
            ],
          ),
        )
      ),
    );
  }

}