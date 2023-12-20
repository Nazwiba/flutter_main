import 'package:flutter/material.dart';

class MovieMain extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const  Text("Movies"),
        ),
        body: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.favorite), 
              label:const Text("Wishlist") ),
              Expanded(child: ListView.builder(
                itemBuilder: (context,index)=> 
              Card(child: ListTile(
                title: Text(""),
                subtitle: Text(""),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
               ),),
              ),
            ),
          ],
        ),
    );
  }
}