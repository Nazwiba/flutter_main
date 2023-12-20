import 'package:flutter/material.dart';
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
              hintStyle: TextStyle(color: Color.fromARGB(255, 112, 111, 111)),
              prefixIcon:
                  Icon(Icons.search, color: Color.fromARGB(255, 112, 111, 111)),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: const Color.fromARGB(255, 112, 111, 111),
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.green,
                ),
                label: "CART"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.green,
                ),
                label: "ACCOUNT"),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    //color: const Color.fromARGB(255, 160, 201, 161),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("OFFERS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 78, 36),
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    //color: const Color.fromARGB(255, 160, 201, 161),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("VEGETABLES",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 78, 36),
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    //color: const Color.fromARGB(255, 160, 201, 161),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("FRUITS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 78, 36),
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    //color: const Color.fromARGB(255, 160, 201, 161),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("EXOTIC",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 78, 36),
                            ))),
                  ),
                ),
              ],
            ),
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
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/farmergrid.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                            left: 10,
                            right: 10,
                            //top: 10,
                            bottom: 100,
                            child: Column(
                              children: [
                                Text(
                                  "RESTOCKED AND",
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color:
                                              Color.fromARGB(255, 6, 67, 39))),
                                ),
                                Text(
                                  "READY FOR YOU!",
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color:
                                              Color.fromARGB(255, 6, 67, 39))),
                                ),
                              ],
                            )),
                        Positioned(
                            top: 100,
                            left: 50,
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset(
                                    "assets/icons/apple.png",
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset(
                                    "assets/icons/strawberry.png",
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset("assets/icons/banana.png",
                                      height: 70, width: 70),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset(
                                    "assets/icons/pine apple.png",
                                    height: 70,
                                    width: 70,
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Stack(children: [
                      Container(
                        height: 800,
                        width: 500,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/farmergrid.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                          left: 10,
                          right: 10,
                          //top: 10,
                          bottom: 100,
                          child: Column(
                            children: [
                              Text(
                                "RESTOCKED AND",
                                style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Color.fromARGB(255, 6, 67, 39))),
                              ),
                              Text(
                                "READY FOR YOU!",
                                style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Color.fromARGB(255, 6, 67, 39))),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 100,
                          left: 50,
                          child: Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 40, left: 20),
                                child: Image.asset(
                                  "assets/icons/Bingxueling-Fruit-Vegetables-Pumpkin.256.png",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 40, left: 20),
                                child: Image.asset(
                                  "assets/icons/Bingxueling-Fruit-Vegetables-Tomato.256.png",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 40, left: 20),
                                child: Image.asset(
                                    "assets/icons/Fengsj-Vegetables-Cabbage.128.png",
                                    height: 70,
                                    width: 70),
                              ),
                            ],
                          )),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Stack(children: [
                      Container(
                        height: 800,
                        width: 500,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 245, 194, 211)),
                      ),
                      Positioned(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Text(
                              "Choose",
                              style: GoogleFonts.kanit(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 6, 67, 39))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text("Health Daily",
                                style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color:
                                            Color.fromARGB(255, 6, 67, 39)))),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Fresh Vegetables and Fruits"),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("Delivered to Your Doorstep"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 40),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    backgroundColor:
                                        const MaterialStatePropertyAll(
                                            Colors.white)),
                                onPressed: () {},
                                child: const Text(
                                  "Order Now",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ],
                      ))
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 226, 225, 225),
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 50),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Icon(
                                  Icons.timer_outlined,
                                  color: Colors.green,
                                  size: 50,
                                ),
                              ),
                              Text("  30 MINS POLICY ")
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.green,
                                  size: 50,
                                ),
                              ),
                              Text("TRACEABILITY")
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 40),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/icons/icons8-delivery-boy-65.png"),
                                height: 50,
                                width: 50,
                              ),
                              Text("LOCAL"),
                              Text("SOURCING")
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              tileColor: Colors.white,
              title: Text(
                "Shop By Category",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/offer.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Offer",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/tomato.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Vegetables",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/pineapplefrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Fruits",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/brocolifrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Exotic",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/carrotfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Fresh Cuts",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/chickfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Nutrition Charges",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/blkpprfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Packed flavours",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/saladfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Gourment salad",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
           const  SizedBox(height: 10,),
            Stack(
              children: [
                Container(
                height: 250,
                width: 600,
                decoration: const BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/images/farmer image.jpg"),fit: BoxFit.fill)),
              ),
              const Positioned(
                left: 20,
                top: 30,
                child: Text("#KnowYourFarmer",style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color:Color.fromARGB(255, 9, 44, 10)),)),
                
              const Positioned(
                left: 20,
                top: 70,
                  child: Text("KRISHNA VADIVEL SAYS THANK YOU",
                  style: TextStyle(color: Colors.white),)),
              
              const Positioned(
                left: 20,
                top: 90,
                child: Text("for buying his Tomato from",
                style: TextStyle(color: Colors.white),)),

             const  Positioned(
                left: 20,
                top: 110,
                child: Text("Farmers Fresh Zone",
                style: TextStyle(color: Colors.white),)),
              ],
            ),
            const SizedBox(height: 15,),
            const ListTile(
              tileColor: Colors.white,
              title: Text(
                "Best Selling Products",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/ladies finger.jpeg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Ladies Finger",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("30.6",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("19% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("0.30 Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/pineapple semi.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Pineapple- Semi ripe",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(800 gm - 1.5 Kg)",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("109",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/cucumber.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Salad Cucumber",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("32",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("23% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("0.50 Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/kiwi 3.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Kiwi (3 Nos)",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("165",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/cauliflower.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Cauliflower - 1 Nos",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(600g - 900g)",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("55",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("27% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/carrot stick.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Carrot Stick Cut - 250gm",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("49",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("28% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/citrus.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Citrus - Imported",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("450gm - 550gm",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("119",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/avocado.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Avocado Semi Ripe",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(550gm - 650gm)",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("289",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/green apple.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Green Apple - Granny",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Smith (450g - 550g)",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("179",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color:Colors.green,
                              minWidth: 120,
                              height: 40,
                              child:const  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/sambar cut.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Sambar Cut Mini Pack 250g",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("59",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("14% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/avial cut.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Avial Cut Family Pack 500g",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("89",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("19% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/beans.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Beans Haricot",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(275g - 325g)",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("35",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child:const  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/onion.jpg",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Big Onion",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(950gm - 1050gm)",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("66",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                       
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/cabbage.png",height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Cabbage(600g - 800g)",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("30",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child:const  Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            MaterialButton(onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            color: Colors.green,
            minWidth: 500,
            height: 40,
            child:const Text("VIEW MORE",style: TextStyle(fontSize: 15,color: Colors.white),),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                Container(
                  height: 250,
                  width: 550,
                  decoration: const BoxDecoration(image: DecorationImage(
                    image: AssetImage("assets/images/border.png"),fit: BoxFit.fill)),
                ),
                Positioned(
                  left: 350,
                  top: 70,
                  child: Image.asset("assets/images/badge.jpg",height: 100,width: 100,)
                  ),
          const Positioned(
                  left: 70,
                  top: 60,
                  child: Text("We are not just SAFE",style: TextStyle(fontWeight: FontWeight.bold),)
                ),
                Positioned(
                  left: 70,
                  top: 75,
                  child: Text("WE ARE",style: GoogleFonts.bebasNeue(color:const  Color.fromARGB(255, 118, 48, 22),
                  textStyle:const  TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),)
                  ),
                Positioned(
                  left: 70,
                  top: 115,
                  child: Text("CERTIFIED SAFE.",style: GoogleFonts.bebasNeue(color:const  Color.fromARGB(255, 118, 48, 22),
                  textStyle:const  TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),)
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 165,left: 70),
                  child: MaterialButton(onPressed: (){},
                  shape: const StadiumBorder(),
                  minWidth: 10,
                  height: 10,
                  color:const  Color.fromARGB(255, 118, 48, 22),
                  child:const  Text("View the latest tost results here",style: TextStyle(color: Colors.white),),
                    ),
                  ),

                ],
              ),
              
            )
          ],
        ),
      ),
    );
  }
}
