import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightPage extends StatefulWidget {
  final String seat;
  const FlightPage({
    required this.seat,
    super.key
  });

  @override
  State<FlightPage> createState() => FlightPageState();
}

class FlightPageState extends State<FlightPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
       bottomNavigationBar: GestureDetector(
        onTap: () {
        
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
        
              Text("ADD TO WALLET",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
        
              Icon(
                Icons.wallet,
                color: Colors.white,
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
              title: Text("FLIGHT",
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
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [

            SliverPadding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 16.0
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate([

                  Container(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0
                    ),
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [

                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [

                                    Text("May 29",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                      ),
                                    ),

                                    Text("7:45 PM",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )

                                  ],
                                ),

                                const Expanded(child: SizedBox()),

                                const Expanded(
                                  child: Icon(Icons.flight)
                                ),

                                const Expanded(
                                  child: Divider(
                                    color: Color(0xFF292929),
                                  )
                                ),

                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF292929),
                                      borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: const Text('13h 55m',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0
                                      ),                                
                                    )
                                  )
                                ),

                                const Expanded(
                                  child: Divider(
                                    color: Color(0xFF292929),
                                  )
                                ),

                                const Expanded(
                                  child: Icon(Icons.flight_land)
                                ),

                                const Expanded(child: SizedBox()),

                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [

                                    Text("May 30",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                      ),
                                    ),

                                    Text("6:30 PM+1",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )

                                  ],
                                ),

                              ],
                            ),

                            const SizedBox(height: 10.0),

                            const Divider(
                              color: Color(0xFF292929),
                            ),

                            const SizedBox(height: 10.0),

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                
                                    Text("JKTA",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 18.0
                                      ),
                                    ),
                                
                                    Text("Jakarta",
                                      style: TextStyle(
                                        color: Color(0xFF292929)
                                      ),
                                    )
                                
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                
                                    Text("KNO",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 18.0
                                      ),
                                    ),
                                
                                    Text("Medan",
                                      style: TextStyle(
                                        color: Color(0xFF292929)
                                      ),
                                    )
                                
                                  ],
                                )

                              ],
                            )
                          ],
                        ) 
                      )
                    )
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0
                    ),
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                          
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                
                                    Text("03",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 25.0
                                      ),
                                    ),
                                
                                    Text("Terminal",
                                      style: TextStyle(
                                        color: Color(0xFF292929)
                                      ),
                                    )
                                
                                  ],
                                ),
                              ),

                              const VerticalDivider(
                                color: Color(0xFF292929),
                                thickness: 1,
                              ),
                          
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                
                                    Text("61",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 25.0
                                      ),
                                    ),
                                
                                    Text("Gate",
                                      style: TextStyle(
                                        color: Color(0xFF292929)
                                      ),
                                    )
                                
                                  ],
                                ),
                              ),

                              const VerticalDivider(
                                color: Color(0xFF292929),
                                thickness: 1,
                              ),
                          
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                
                                    Text(widget.seat,
                                      style: const TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 25.0
                                      ),
                                    ),
                                
                                    const Text("Seat",
                                      style: TextStyle(
                                        color: Color(0xFF292929)
                                      ),
                                    )
                                
                                  ],
                                ),
                              )
                          
                            ],
                          ),
                        )
                      )
                    )
                  )

                ])
              ),
            )

          ],
        )
      )
    );
  }

}