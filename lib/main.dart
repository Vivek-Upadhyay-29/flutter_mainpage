import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;


  void _navigateButtonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text('GTU Vault',style: TextStyle(fontSize: 30,fontFamily: 'FontMain',fontWeight: FontWeight.w500),)),
    ),


          body: ListView(
          children: [
            topPage(),

           secondsPage(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 15,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.black87,
                child: Container(
                  height: 300,
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [Card(
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: Container(
                      height: 300,

                        child: Image.asset('assets/images/logo1.jpg',
                         fit: BoxFit.fitHeight,
                          ),

                      ),
                    ),
                       Positioned(
                         top: 20,
                         left: 270,
                         child: Container(
                         height: 70,
                          child: Card(child: Text('Civil \n Engineering',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                           backgroundColor: Colors.purple, fontFamily: 'FontMain',),)),

                       ),
                       )
                    ]
                  ),
                ),

              ),

          ],
          ),

          bottomNavigationBar: BottomNavigationBar(
           currentIndex: _selectedIndex,
           onTap: _navigateButtonBar,
           type: BottomNavigationBarType.fixed,

           items: [
             BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
             BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
             BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Bookmark'),
             BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
           ],
         ),
    );//
  }

}
class topPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            child: Image.asset('assets/images/logo1.jpg',
              fit: BoxFit.fitHeight,),

          ),
        ),

        height: 300,
        decoration: BoxDecoration(
            color: Colors.purple,
            boxShadow: [ BoxShadow(
              color: Colors.black87,
              offset:Offset(4,4),
              blurRadius:10.0,
              spreadRadius:3.0,
            )],

            borderRadius: BorderRadius.circular(10)


        ),

      ),
    );
  }
}
// ignore: camel_case_types
class secondsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Padding(
     padding: const EdgeInsets.all(8.0),
     child: Card(
       elevation: 15,
       child: Container(
         height: 300,

         decoration:
         BoxDecoration(
             color: Colors.cyan,
             borderRadius: BorderRadius.circular(10)
         ),
         child: Text('Hello World',
           style: TextStyle(fontFamily: 'FontMain',fontSize: 30, fontWeight: FontWeight.bold),),
       ),
     ),
   );
  }

}
