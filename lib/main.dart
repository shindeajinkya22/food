import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Food Junction"),
          backgroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(
              "Simple Way to find Tasty Food ",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                Categories(title: "All", active: true),
                Categories(
                  title: "Chinese",
                  active: false,
                ),
                Categories(
                  title: "Indian",
                  active: false,
                ),
                Categories(
                  title: "Italian",
                  active: false,
                ),
                Categories(
                  title: "Mexican",
                  active: false,
                ),
                Categories(
                  title: "American",
                  active: false,
                ),
                Categories(
                  title: "Thai",
                  active: false,
                )
              ]),
            ),
            SizedBox(height: 15),
            Container(
              height: 35,
              width: 400,
              color: Colors.white,
              child: Expanded(
                child: TextField(
                    decoration: InputDecoration(
                        prefix: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)))),
              ),
            ),
            Stack(
              children: <Widget>[
              
            Container(margin: EdgeInsets.only(right: 240),
              height: 300,width:400,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(15),color: Color(0xFFFFCDD2).withOpacity(0.5)
                
              ),
            ),
            Container(margin: EdgeInsets.only(left:5),
            
              height: 150,width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,color: Color(0xFFFFCDD2).withOpacity(0.25)
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage("assets/images/tandu.png")
            //     )
            //   ),
            // )
            CircleAvatar(radius: 70,
              backgroundImage: AssetImage("assets/images/tand.jpg"),
            ),
         Positioned(
           left: 140,
           top: 80,
           child: Text("\$20",style: TextStyle(fontSize: 15))
           ),
           Positioned(
           right: 235,
           top: 150,
           child:Column(
             children:<Widget> [
                Text("Chicken Tandoori",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                Text("A dish of roasted \n chicken marinated \n in yogurt and generously\n spiced",style: TextStyle(fontSize: 15,color: Colors.red) ,)
             ],
           )
           
           )
              ]
              )

                                ],
          
        )
        );
  }
}

class Categories extends StatelessWidget {
  //const Categories({Key? key}) : super(key: key);
  final String title;
  final bool active;

  const Categories({
    Key? key,
    this.active = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(title,
            style: Theme.of(context).textTheme.button!.copyWith(
                color: active ? Colors.red : Colors.black, fontSize: 20)));
  }
}




//( Text("Chicken Tandoori",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
  //         )