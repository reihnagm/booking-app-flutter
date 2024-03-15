import 'package:booking_app/data/data.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepOrangeAccent,
        useMaterial3: true, 
      ),
      home: const MyHomePage(title: 'Booking App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, 
    required this.title
  });

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  String returns = "ONE WAY";
  String classesData = "BUSINESS";

  int person = 1;

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      bottomNavigationBar: Container(
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

            Text("SEARCH FLIGHTS",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),

            Icon(
              Icons.arrow_right,
              color: Colors.white,
            )

          ],
        )
      ),
      appBar: AppBar(
        title: Text(widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: RefreshIndicator.adaptive(
        color: Colors.deepOrangeAccent,
        onRefresh: () {
          return Future.sync(() {

          });
        },
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [

            SliverList(
              delegate: SliverChildListDelegate([

                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Text("Book",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      Text("New",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      Text("Flights",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                      
                    ],
                  ),
                ),

                Container(
                   margin: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    bottom: 16.0
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          color: Color(0xFF292929),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 16.0,
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(text: 'JAKARTA',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                                )
                                              ),
                                            ],
                                          ),
                                        ),

                                        Text("JKTA",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ],
                                    ),

                                    Icon(
                                      Icons.flight,
                                      color: Colors.white,
                                    )

                                  ],
                                )

                              ],
                            ),
                          )
                        ),
                      ),

                      SizedBox(height: 10.0),

                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          color: Color(0xFF292929),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 16.0,
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(text: 'MEDAN',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                                )
                                              ),
                                            ],
                                          ),
                                        ),

                                        Text("KNO",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ],
                                    ),

                                    Icon(
                                      Icons.flight_land,
                                      color: Colors.white,
                                    )

                                  ],
                                )

                              ],
                            ),
                          )
                        ),
                      ),

                    ],
                  )
                ),

                Container(
                  margin: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0
                  ),
                  child: Card(
                    elevation: 0.0,
                    surfaceTintColor: Colors.white,
                    color: Colors.white,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.white
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                            
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                            
                                    const Text("Return"),

                                    DropdownButton(
                                      value: returns,
                                      underline: const SizedBox(),
                                      items: typeReturns.map((value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String? val) {
                                        setState(() {
                                          returns = val.toString();
                                        });
                                      },
                                    ),
                            
                                  ],
                                ),
                            
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                            
                                    const Text("Class"),

                                    DropdownButton(
                                      value: classesData,
                                      underline: const SizedBox(),
                                      items: classes.map((value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String? val) {
                                        setState(() {
                                          classesData = val.toString();
                                        });
                                      },
                                    ),
                            
                                  ],
                                )
                            
                              ],
                            ),

                            const Divider(),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                                        
                                const Text("Date"),

                                TextField(
                                  readOnly: true,
                                  controller: TextEditingController(
                                    text: DateFormat("yyyy-MM-dd").format(selectedDate),
                                  ),
                                  decoration: const InputDecoration(
                                    suffixIcon: Icon(Icons.arrow_drop_down),
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    )
                                  ),
                                  onTap: () async {
                                    final DateTime? picked = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2101),
                                    );
                                    if (picked != null && picked != selectedDate) {
                                      setState(() {
                                        selectedDate = picked;
                                      });
                                    }
                                  },
                                )
                                                        
                              ],
                            ),

                            const Divider(),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [

                                    const Text("Persons"),

                                    Text(person.toString(),
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )

                                  ],
                                ),
                            
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [

                                    GestureDetector(
                                      onTap: () {
                                        if(person == 1) return;

                                        setState(() {
                                          person--;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.only(
                                          top: 5.0,
                                          bottom: 5.0,
                                          left: 10.0,
                                          right: 10.0
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6.0),
                                          color: Colors.blueGrey
                                        ),
                                        child: const Text('-',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ),
                                    ),

                                    const SizedBox(width: 8.0),

                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          person++;
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          top: 5.0,
                                          bottom: 5.0,
                                          left: 10.0,
                                          right: 10.0
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6.0),
                                          color: Colors.blueGrey
                                        ),
                                        child: const Text("+",
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ),
                                    )

                                  ],
                                )
                            
                              ],
                            ),

                          ],
                        )
                      )
                    )
                  )
                )

              ])
            )


          ],
        ),
      )
    );
  }

}
