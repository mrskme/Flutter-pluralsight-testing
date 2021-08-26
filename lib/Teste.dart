import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var introText = "Intro screen";
  bool isEasterEggText() => appBarText == easterEggText;
  var easterEggText = "You found an easter egg!";
  var appBarText = "Intro screen";
  bool hasShownEasterEggText = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appBarText),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Pic2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: GestureDetector(
              onTap: () => {
                setState(() => {
                      print(!isEasterEggText()),
                      print(!hasShownEasterEggText),
                      if (!isEasterEggText() && !hasShownEasterEggText)
                        {
                          appBarText = easterEggText,
                          hasShownEasterEggText = true,
                        }
                      else
                        appBarText = introText,
                    })
              },
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  "Welcome to the intro page\nThis is the webpage of awesomeness",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        offset: Offset(0.5, 0.5),
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
