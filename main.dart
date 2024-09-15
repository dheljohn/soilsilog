import 'package:flutter/material.dart';
import 'package:pusoil/navBar.dart';

// import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> body = [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 60),
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 35,
                    ),
                    Container(
                      height: 65,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xFF000000),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: const Center(
                        child: Text(
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          'Good Morning, User!',
                        ),
                      ),
                    ),
                  ],
                ),
              ), //circle avatar
              Container(
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xFF000000),
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        margin: const EdgeInsets.all(20.0),
                        child: const Text(
                          'Soil moisture: '
                          '27%',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xFF000000),
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        margin: const EdgeInsets.all(20.0),
                        child: const Text(
                          'Temp: 30°',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //2 sensor
            ],
          ),
        ),
        // Divider(
        //   height: 1,
        //   thickness: 3,
        //   color: Colors.redAccent,
        // ),
        Expanded(
          flex: 1,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              height: 220,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              margin: EdgeInsets.all(30),
              child: const Center(
                child: Text(
                  style: TextStyle(
                    fontSize: 39,
                  ),
                  'Graph Reading',
                ),
              ),
            ),
            // Container(
            //   color: Colors.brown,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Container(
            //         margin: const EdgeInsets.all(10),
            //         child: ElevatedButton(
            //           onPressed: () {},
            //           child: const Text('Dash'),
            //         ),
            //       ),
            //       Container(
            //         margin: const EdgeInsets.all(10),
            //         child: ElevatedButton(
            //           onPressed: () {},
            //           child: const Text('HI'),
            //         ),
            //       ),
            //       Container(
            //         margin: const EdgeInsets.all(10),
            //         child: ElevatedButton(
            //           onPressed: () {},
            //           child: const Text('HI'),
            //         ),
            //       ),
            //       Container(
            //         margin: const EdgeInsets.all(10),
            //         child: ElevatedButton(
            //           onPressed: () {},
            //           child: const Text('HI'),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ]),
        ),
      ],
    ),
    const Text('Hello'),
    const Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: const Text('Tempilog'),
        centerTitle: true,
        backgroundColor: Colors.green,

        // leading: IconButton(
        //     onPressed: (){},
        //     icon: IconButton(
        //         icon: Icon(Icons.menu),
        //         onPressed: (){},
        //
        //     ),
        // ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.auto_graph),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_2),
          ),
        ],
      ),
      // body: Column(
      //
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: <Widget>[
      //
      //     Expanded(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //
      //           Container(
      //
      //             margin: EdgeInsets.fromLTRB(20, 20, 0 , 35),
      //             child: CircleAvatar(
      //               radius: 35,
      //             ),
      //
      //           ),
      //           Container(
      //
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //
      //               children: [
      //                 Expanded(
      //                   child: Container(
      //
      //                     height: 200,
      //                     decoration: BoxDecoration(
      //                       color: Colors.white,
      //                       border: Border.all(
      //                           color: const Color(0xFF000000),
      //                           width: 2.0,
      //                           style: BorderStyle.solid),
      //                       borderRadius: BorderRadius.all(
      //                         Radius.circular(10),
      //                       ),
      //                     ),
      //                     margin: const EdgeInsets.all(20.0),
      //                     child: const Text(
      //                       'Soil moisture: '
      //                           '27%',
      //                       style: TextStyle(fontSize: 30),
      //                     ),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   child: Container(
      //                     height: 200,
      //                     decoration: BoxDecoration(
      //                       color: Colors.white,
      //                       border: Border.all(
      //                           color: const Color(0xFF000000),
      //                           width: 2.0,
      //                           style: BorderStyle.solid),
      //                       borderRadius: BorderRadius.all(
      //                         Radius.circular(10),
      //                       ),
      //                     ),
      //                     margin: const EdgeInsets.all(20.0),
      //                     child: const Text(
      //                       'Temp: 30°',
      //                       style: TextStyle(fontSize: 40),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Divider(
      //       height: 1,
      //       thickness: 3,
      //       color: Colors.redAccent,
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      //         Container(
      //           height: 250,
      //           width: 350,
      //           decoration: BoxDecoration(
      //             color: Colors.white,
      //             border: Border.all(
      //                 color: const Color(0xFF000000),
      //                 width: 2.0,
      //                 style: BorderStyle.solid),
      //             borderRadius: BorderRadius.all(
      //               Radius.circular(10),
      //             ),
      //           ),
      //           margin: EdgeInsets.all(30),
      //           child: const Center(
      //
      //             child: Text(
      //
      //               style: TextStyle(
      //                 fontSize: 39,
      //
      //               ),
      //               'Graph Reading',
      //
      //             ),
      //           ),
      //         ),
      //         Container(
      //           color: Colors.brown,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: <Widget>[
      //               Container(
      //                 margin: const EdgeInsets.all(10),
      //                 child: ElevatedButton(
      //                   onPressed: () {},
      //                   child: const Text('Dash'),
      //                 ),
      //               ),
      //               Container(
      //                 margin: const EdgeInsets.all(10),
      //                 child: ElevatedButton(
      //                   onPressed: () {},
      //                   child: const Text('HI'),
      //                 ),
      //               ),
      //               Container(
      //                 margin: const EdgeInsets.all(10),
      //                 child: ElevatedButton(
      //                   onPressed: () {},
      //                   child: const Text('HI'),
      //                 ),
      //               ),
      //               Container(
      //                 margin: const EdgeInsets.all(10),
      //                 child: ElevatedButton(
      //                   onPressed: () {},
      //                   child: const Text('HI'),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ]),
      //     ),
      //   ],
      // ),
      // backgroundColor: Colors.greenAccent,
    );
  }

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});
//
//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }
//
// class _BottomNavState extends State<BottomNav> {
//   int _currentIndex = 0;
//   List<Widget> body = const[
//     Icon(Icons.home),
//     Icon(Icons.menu),
//     Icon(Icons.person),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
}
