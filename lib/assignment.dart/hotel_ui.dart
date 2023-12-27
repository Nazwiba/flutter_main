import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel(),
  ));
}

class Hotel extends StatefulWidget {
  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  child: Image.asset("assets/images/plaza.jpg"),
                ),
                Positioned(
                    left: 20,
                    top: 270,
                    child: Column(
                      children: [
                        const Text(
                          "Crowne Plaza",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text("Kochi, Kerala",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 178, 177, 177))),
                            onPressed: () {},
                            child: const Text(
                              "3.4/85 Reviews",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    )),
                const Positioned(
                    right: 30,
                    top: 330,
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purple,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 290, top: 10),
                    child: Text(
                      "\$200",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    "3 Km to LuLu Mall",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 290),
                    child: Text(
                      "Per Night",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                minWidth: 450,
                onPressed: () {},
                child: const Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white),
                )),
               const Padding(
                 padding: EdgeInsets.only(top: 8,left: 2),
                 child: ListTile(
                  title: Text("Crowne Plaza ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 ),
               ),
               const Padding(
                 padding: EdgeInsets.only(left: 15,right: 8),
                 child: Text("Nestled by Vembanad Lake,Crowne Plaza Kochi is a luxurious property catering to corporate and social gatherings. With modern design, exceptional hospitality, and a strategic location, it offers convenience for business and leisure travelers. Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport. The hotel features 269 spacious rooms, versatile meeting spaces, and diverse dining options. The well-appointed rooms offer scenic views of the backwaters or cityscape, complemented by 24-hour in-room dining and indulgent spa and salon services. Guests can enjoy various dining options available throughout the day, including fine dining and specialty cuisine at on-site restaurants such as Aroma, Mosaic, Skygrill, and Zoka. Crowne Plaza Kochi is an excellent venue for corporate and social events, providing fully equipped meeting rooms with advanced technology and versatile indoor and outdoor spaces suitable for different occasions. The pillarless ballroom can accommodate up to 600 guests in a theater-style arrangement. Additionally, there is a Backwater Pavilion capable of hosting grand events or wedding ceremonies for up to 2000 guests in a tranquil waterfront setting."),
               )
          ],
        ),
      ),
    );
  }
}
