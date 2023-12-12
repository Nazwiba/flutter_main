import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: BottomSheetEg(),
  ));
}

class BottomSheetEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(child:Text("Images",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
      //showModalBottomSheet(
      //       context: context,
      //       builder: (context) {
      //         return  const Column(
      //            mainAxisSize: MainAxisSize.min,
      //         children: [
      //           ListTile(
      //             leading: Icon(Icons.share),
      //             trailing: Text("Share"),
      //         ),
      //           ListTile(
      //             leading: Icon(Icons.copy),
      //             trailing: Text("Copy"),
      //         ),  
      //        ],);
      // });
      // without creating extra function we can direct call the bottomsheet here
            showsheet(context);
          },
          child:
              Image.asset("assets/images/jerry.jpg"),
        ),
      ),
    );
  }
}

void showsheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return  const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             ListTile(
                leading: Icon(Icons.share),
                trailing: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.copy),
                trailing: Text("Copy"),
              ),  
             ],);
      });
}
