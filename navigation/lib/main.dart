import 'package:flutter/material.dart';

   void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(home:const HomeActivity());
    }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("Home")),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityOne('Activity One Come From Home')));
          }, child: Text("Activity one")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityTwo()));
          }, child: Text("Activity Two"))
        ],
      ),
    );
    }
}

class ActivityOne extends StatelessWidget{
     String msg;
   ActivityOne(
       this.msg,
       {super.key}
     );

     @override
     Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(
           title: Text(msg),
         ),
         body: Center(
           child:
             ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityThree()));
             }, child: Text("Go Activity three")),

         ),
       );
     }
}

class ActivityTwo extends StatelessWidget{
     @override
     Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(
           title: Text("Activity Two"),
         ),
         body: Center(
           child: Card(
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
             shadowColor: Color.fromRGBO(33, 191, 115, 1),
             color: Color.fromRGBO(33, 191, 115, 1),
             elevation: 30,
             child: SizedBox(
               height: 200,
               width: 200,
               child: Center(child:Text("This is card")),
             ),
           ),

         ),
       );
     }
}

class ActivityThree extends StatelessWidget{
     @override
     Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(
           title: Text("Activity Three"),
         ),
         body: Column(
           children: [
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityFour()));
             }, child: Text("Activity Four"))
           ],

         ),
       );
     }
}

class ActivityFour extends StatelessWidget{
     @override
    Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(
           title: Text("Activity Four"),
         ),
         body: Center(
           child: CircularProgressIndicator(
             color: Colors.green,
             // strokeWidth: 4,
             // backgroundColor: Colors.indigo,
           ),
           // linear
           // child: LinearProgressIndicator(
           //   minHeight: 20,
           //   color: Colors.green,
           //   backgroundColor: Colors.indigo,
           // ),
         ),
       );
     }
}