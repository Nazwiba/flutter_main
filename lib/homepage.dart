import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Playlist"),
      ),
      body: ListView(
        children: [
          const Card(
            child: ListTile(
              title: Text("Perfect"),
              subtitle: Text("3.45"),
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.music_video),
              ),
              trailing: FaIcon(FontAwesomeIcons.play),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Night Changes"),
              subtitle: Text("5.45"),
              leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.music_video),
              ),
              trailing: FaIcon(FontAwesomeIcons.play),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Ed Sheeran"),
              subtitle: Text("4.18"),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.music_video),
              ),
              trailing: FaIcon(FontAwesomeIcons.play),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Let Me Down"),
              subtitle: Row(
                children: [
                  Icon(Icons.download, color: Colors.blue),
                  
                ],
              ),
              leading: CircleAvatar(
          
                backgroundColor: Colors.orange,
                child: Icon(Icons.music_video),
              ),
              trailing: FaIcon(FontAwesomeIcons.play),
            ),
          ),
          
          
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  // center: Alignment.topCenter,
                  // stops:[.5,1],

                  colors: [
                    Colors.green,
                    Colors.yellow,
                    Colors.red,
                    Colors.blue
                  ],
                ).createShader(bounds),
                child: const FaIcon(FontAwesomeIcons.google),
              ),
              const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
                ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  // center: Alignment.topCenter,
                  // stops:[.5,1],

                  colors: [
                    Colors.purple,
                    Colors.pink,
                    Colors.orange,
                    Colors.yellow
                  ],
                ).createShader(bounds),
                child: const FaIcon(FontAwesomeIcons.instagram),
              ),
              const FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.blue,
              ),
              const FaIcon(FontAwesomeIcons.spotify,color: Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
