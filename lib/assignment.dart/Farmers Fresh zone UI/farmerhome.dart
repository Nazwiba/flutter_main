import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/stateless_listview3.dart';
import 'package:flutter_main/stateless_listview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FarmerHome(),
  ));
}

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
                  height: 200,
                  width: double.infinity,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    childAspectRatio: 0.38,
                    children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Stack(
                              children: [
                                Container(
                                height: 800,
                                width: 500,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/farmergrid.jpg"),fit: BoxFit.fill)),
                                                        
                                ),
                                 Positioned(
                                  left: 10,
                                  right: 10,
                                  //top: 10,
                                  bottom: 100,
                                  child: Column(
                                    children: [
                                      Text("RESTOCKED AND",style: GoogleFonts.kanit(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Color.fromARGB(255, 6, 67, 39))),),
                                      Text("READY FOR YOU!",style: GoogleFonts.kanit(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Color.fromARGB(255, 6, 67, 39))),),
                                        ],
                                  )),
                                  Positioned(
                                    top: 100,
                                    left: 50,
                                    child: Wrap(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 10,right: 30),
                                          child: Image.asset("assets/icons/apple.png",height: 70,width: 70,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom:10 ,right:30 ),
                                          child: Image.asset("assets/icons/strawberry.png",height: 70, width: 70,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom:10,right: 30 ),
                                          child: Image.asset("assets/icons/banana.png",height: 70,width:70),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 10,right: 30),
                                          child: Image.asset("assets/icons/pine apple.png",height: 70,width: 70,),
                                        )],)),
                                       ],),),
                             Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Stack(
                              children: [
                                Container(
                                height: 800,
                                width: 500,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/farmergrid.jpg"),fit: BoxFit.fill)),
                              ),
                              Positioned(
                                  left: 10,
                                  right: 10,
                                  //top: 10,
                                  bottom: 100,
                                  child: Column(
                                    children: [
                                      Text("RESTOCKED AND",style: GoogleFonts.kanit(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Color.fromARGB(255, 6, 67, 39))),),
                                      Text("READY FOR YOU!",style: GoogleFonts.kanit(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Color.fromARGB(255, 6, 67, 39))),),
                                        ],
                                  )),
                                  Positioned(
                                    top: 100,
                                    left: 50,
                                    child: Wrap(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 10,right: 40,left: 20),
                                          child: Image.asset("assets/icons/Bingxueling-Fruit-Vegetables-Pumpkin.256.png",height: 70,width: 70,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom:10 ,right:40,left: 20 ),
                                          child: Image.asset("assets/icons/Bingxueling-Fruit-Vegetables-Tomato.256.png",height: 70, width: 70,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom:10,right: 40,left: 20 ),
                                          child: Image.asset("assets/icons/Fengsj-Vegetables-Cabbage.128.png",height: 70,width:70),
                                        ),
                                        ],)),
                                        ]),),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Stack(
                                  children:[
                                    Container(
                                      height: 800,
                                      width: 500,
                                      decoration: const BoxDecoration(color: Color.fromARGB(255, 245, 194, 211)),
                                    ),
                                    Positioned(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 80),
                                            child: Text("Choose",style: GoogleFonts.kanit(textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Color.fromARGB(255, 6, 67, 39))),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Text("Health Daily",style: GoogleFonts.kanit(textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Color.fromARGB(255, 6, 67, 39)))),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text("Fresh Vegetables and Fruits"),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child:Text("Delivered to Your Doorstep"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10,right: 40),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                                backgroundColor: const MaterialStatePropertyAll(Colors.white)),
                                              onPressed: (){}, 
                                            child: const Text("Order Now",style: TextStyle(color: Colors.black),)),
                                          ),
                                        ],
                                      ))]),),
                                  
                    ],
                    ),
                ),
    
          
                ],
            ),
          ),
    );
  }}
                        
                      
                      
             
