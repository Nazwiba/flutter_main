import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmerHome extends StatefulWidget {
  @override
  State<FarmerHome> createState() => _FarmerHomeState();
}

class _FarmerHomeState extends State<FarmerHome> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "FAMERS FRESH ZONE",
          style: GoogleFonts.gelasio(
              textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        actions: const [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
          Text(
            "Kochi",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.arrow_drop_down_outlined,
            color: Colors.white,
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.green,
          title: const TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search for Vegetables, fruits..",
                hintStyle:
                     TextStyle(color: Color.fromARGB(255, 112, 111, 111)),
                prefixIcon:  Icon(Icons.search,
                    color: Color.fromARGB(255, 112, 111, 111)),
              
                ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Color.fromARGB(255, 112, 111, 111),
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.green,),
            label: "HOME"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,color: Colors.green,),
            label: "CART"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined,color: Colors.green,),
            label: "ACCOUNT"),
          ]),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Wrap(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      //color: const Color.fromARGB(255, 160, 201, 161),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 207, 249, 211)),
                    child: Center(child: Text("OFFERS",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 35, 78, 36),))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      //color: const Color.fromARGB(255, 160, 201, 161),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 207, 249, 211)),
                    child: Center(child: Text("VEGETABLES",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 35, 78, 36),))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      //color: const Color.fromARGB(255, 160, 201, 161),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 207, 249, 211)),
                    child: Center(child: Text("FRUITS",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 35, 78, 36),))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      //color: const Color.fromARGB(255, 160, 201, 161),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 207, 249, 211)),
                    child: Center(child: Text("EXOTIC",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 35, 78, 36),))),
                    ),
                  ),
                ],),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/farmergrid.jpg"),
                        ],
                        
                      ),
                      Positioned(
                        left: 15,
                        right: 15,
                        bottom: 15,
                        top: 15,
                        child: Column(
                          children: [
                            Text("RESTOCKED AND"),
                            Text("READY FOR YOU!")
                          ],
                          
                        )),
                        Positioned(
                          bottom: 15,
                          left: 15,
                          child: Wrap(
                            children: [
                              Image.asset("assets/icons/orange.png"),
                              Image.asset("assets/icons/kiwi.png")
                            ],
                          ))
                    ],),
                )
              ],
            ),
          ),
    );
  }
}
