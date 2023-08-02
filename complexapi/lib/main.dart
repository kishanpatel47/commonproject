// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main(){
//   runApp(complexapi());
// }

// class MenuItem {
//   final String title;
//   final String icon;
//   final int accessLevel;

//   MenuItem({
//     required this.title,
//     required this.icon,
//     required this.accessLevel,
//   });
// }


// class complexapi extends StatefulWidget {
//   const complexapi({super.key});

//   @override
//   State<complexapi> createState() => _complexapiState();
// }

// class _complexapiState extends State<complexapi> {

// late Map<dynamic,dynamic> data;
//  List menuItems=[];
//  List userlist =[];
// late final String menu;
// Future<void> apicalling()async{
// var token ="grant_type=password&username=CWH007&password=CWH007@2021&client_id=WebApp";
// http.Response response =await http.post(Uri.parse('http://115.124.96.40:8070/api/token'),
// headers:{
//    "Content-Type": "application/json",
// },

// body: token);
// data =jsonDecode(response.body);

//  menuItems = jsonDecode(data["userMenu"]); 

// print(menuItems);


// }
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

// apicalling();


//   }


//   @override
//   Widget build(BuildContext context) {
    
//     return MaterialApp(
//       home: Scaffold(
//         body:  Center(
//         child: FutureBuilder(
//           future: apicalling(),
          
//           builder: (context, snapshot) {
//         return Card(
//           child: Column(
//             children: [
// ListView.builder(
//   itemBuilder: (context, index) {
//     return Text(menuItems['title']);
//   },
// )
//             ],
//           )
//         );
//         },),
//       ),
//       )
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Items',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuItemsScreen(),
    );
  }
}

class MenuItemsScreen extends StatefulWidget {
  @override
  _MenuItemsScreenState createState() => _MenuItemsScreenState();
}

class _MenuItemsScreenState extends State<MenuItemsScreen> {
  List<dynamic> menuItems = [];
  List<dynamic> listview = [];
  
 late double amount;
  @override
  void initState() {
    super.initState();
    fetchMenuItems();
  }

  Future<void> fetchMenuItems() async {
    var token =
        "grant_type=password&username=CWH007&password=CWH007@2021&client_id=WebApp";
    var url = Uri.parse('http://115.124.96.40:8070/api/token');
    var headers = {
      "Content-Type": "application/json",
    };
    var response = await http.post(url, headers: headers, body: token);
    var data = jsonDecode(response.body);
    var data1 = jsonDecode(response.body);

    setState(() {
      menuItems = jsonDecode(data["userMenu"]);
    });
     
print(data);




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Items'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
child:Expanded(
  child:   Row(
  
    children: [
  
         Container(
        height: 100,
        width: 100,
         child: Image(
         
      
         
         
       
            image: AssetImage(
            
            
              menuItems[index]["icon"]!.toString())),
       ),
  
  
  
     Column(
  
    
  
      children: [
  
    
  
        Text("title${menuItems[index]["title"]!.toString()}"),
  
          Text("home${menuItems[index]["home"]!.toString()}"),
  
             Text("accessLevel ${menuItems[index]["accessLevel"]!.toString()}"),
  
                Text("id${menuItems[index]["id"]!.toString()}"),
  
          Text("parentId${menuItems[index]["parentId"]!.toString()}"),

 
 Card(
  child: Column(
    children: [
    Container(
      height: 100,
      width: 100,
      color: Colors.amber,
      child:   Text('gello'),
    )
    ],
  ),
 )

  
      ],
  
    
  
    ),
  
  
  
    
  
    
  
    ],
  
  ),
)
          );
        },
      ),
    );
  }
}
