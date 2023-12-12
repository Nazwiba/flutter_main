

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var name = [
    "Arun",
    "Akshay",
    "Vishnav",
    "Maya",
    "zahra",
    "Alen",
    "Anu",
    "Adharva",
    "Meera",
    "Noel"
  ];
  var messesges = [
    "Hii",
    "Helloo!!",
    "Gd Mrng!",
    "H R U??",
    "R U There??",
    "Where Are You?",
    "How R U!?",
    "Gd Evng",
    "Nice to Meet You",
    "Gd Nyt"
  ];
  //List<double> date_time = [
  //10.30,
  // 12.30,
  //4.51,
  //4.45,
  //   8.45,
  //   7.56,
  //   12.45,
  //   1.56,
  //   2.38,
  //   6.28
  // ];
  var date_time = [
    "10.28 AM",
    "11.00 AM",
    "2.00 PM",
    "12.30 PM",
    "Yesterday",
    "Yesterday",
    "16/11/2022",
    "12/12/2012",
    "2/11/2010",
    "3/11/2008"
  ];
  var images = [
    "https://tse1.mm.bing.net/th?id=OIP.leRaZskYpTKA55a0St0tZgHaJa&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.KnnEOurT2Qq-6NNDlPbD5wHaLF&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.leRaZskYpTKA55a0St0tZgHaJa&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP._9_eV7XFIqQyc1rUFXp5-gHaEK&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP._9_eV7XFIqQyc1rUFXp5-gHaEK&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.leRaZskYpTKA55a0St0tZgHaJa&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP._9_eV7XFIqQyc1rUFXp5-gHaEK&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.KnnEOurT2Qq-6NNDlPbD5wHaLF&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP._9_eV7XFIqQyc1rUFXp5-gHaEK&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.leRaZskYpTKA55a0St0tZgHaJa&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP._9_eV7XFIqQyc1rUFXp5-gHaEK&pid=Api&P=0&h=220",
  ];
  var icons = [
   Icon(Icons.done),
   Icon(Icons.done_all,color: Colors.blue),
   Icon(Icons.done_all),
   Icon(Icons.access_time),
   Icon(Icons.done),
   Icon(Icons.done_all,color: Colors.blue,),
   Icon(Icons.done_all),
   Icon(Icons.access_time),
   Icon(Icons.done),
   Icon(Icons.done_all),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview 2"),
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(images[index]),
                    //backgroundColor: Colors.primaries[index % Colors.primaries.length],
                    // backgroundColor: Colors
                    //.primaries[Random().nextInt(Colors.primaries.length)],
                    //child: Icon(Icons.person),
                  ),
                  title: Text(
                    name[index],
                  ),
                  subtitle: Row(
                    children: [
                      //Icon(icons[index]),
                      icons[index],
                      Text(messesges[index]),
                    ],
                  ),
                  trailing: Text("${date_time[index]}"),
                )),
      ),
    );
  }
}
