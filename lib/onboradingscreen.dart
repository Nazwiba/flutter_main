import 'package:flutter/material.dart';
import 'package:flutter_main/login_page.dart';
import 'package:flutter_main/splash_statefull.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    home: OnBoardingEg(),
  ));
}

class OnBoardingEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "Page 1",
            image: Align(alignment: Alignment.topCenter,
              child: Image.network("assets/images/luminar 2.jpg"),),
              body: "Introduction"
            ),
             PageViewModel(
            title: "Page 2",
            image: Align(alignment: Alignment.topCenter,
              child: Image.network("assets/images/luminar 3.jpeg")),
              body: "Homepage"
            ),
             PageViewModel(
            title: "Page 3",
            image: Align(alignment: Alignment.topCenter,
              child: Image.network("assets/images/luminar.jpg")),
              body: "Welcomepage"
            ),
             ],
             onDone: () =>
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=>LoginPage())),
              onSkip: () => Navigator.push(context, MaterialPageRoute(
              builder: (context)=>Splash2())),
              showSkipButton: true,
              skip: const Text("Skip"),
              next: const Text("Next"),
              done: const Text("Continue"),
              dotsDecorator: DotsDecorator(
                size:const Size(10, 10),
                activeSize: const Size(20, 10), 
                color: Colors.black,
                activeColor: Colors.blue,
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
    );
  }
}
