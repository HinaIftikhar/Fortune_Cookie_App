import 'package:flutter/material.dart';


import 'package:fortune_cookie/providers/fortune_model.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>FortuneModel(),
  child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
          colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 91, 90, 12),),
      ),
      home: MyHomePage() );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});

 


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
   final fortune=Provider.of<FortuneModel>(context);
    return Scaffold(
      appBar: AppBar(
       foregroundColor: Colors.white,
        backgroundColor:const Color.fromARGB(255, 91, 90, 12) ,
     centerTitle: true,
        title: Text("FortuneCookie App",
),
     elevation: 4.0,
     shadowColor: Colors.black54,
      ),
      body: Center(
      
        child: Column(
          
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/cookie.jpg',
            width: 250,
            height: 200,
            fit: BoxFit.cover,),  
            Card(
               elevation:4.0,
              child:
              Padding(padding:  EdgeInsets.all(16.0),
              child:
               Text(fortune.currentFortune,
              style: Theme.of(context).textTheme.headlineMedium,
            )
            ),
           
             
            )
              ,ElevatedButton(
                onPressed:()=>fortune.getNew(),
                style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 91, 90, 12), // Button background color
                foregroundColor: Colors.white, //text color
                minimumSize: Size(200, 50)
  ) , 
               child:
                Text("Get Fortune",
                style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold)))   
          ],
        ),
      )
      
      ); 
    
  }
}
