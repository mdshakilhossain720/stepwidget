import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     title: " MaterialApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  MySnackBar(message,context){

    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: message));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Inventory App"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
              //bottomLeft: Radius.circular(25),
             // bottomRight: Radius.circular(25),
           // )),
            titleSpacing: 2,
            centerTitle: true,
            toolbarOpacity: 1,
            toolbarHeight: 60,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.grey,
            ),

            actions: [
              IconButton(onPressed: (){MySnackBar("Alert", context);}, icon: Icon(Icons.add_alert),
              tooltip: 'Alert',),
              SizedBox(width: 20,),
              IconButton(onPressed: (){MySnackBar("Setting", context);}, icon: Icon(Icons.settings),
              tooltip: 'Setting',),
              SizedBox(width: 20,),
              IconButton(onPressed: (){MySnackBar("Email", context);}, icon: Icon(Icons.email),
              tooltip: 'email',),
            ],

          ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        tooltip: 'Add',
        child: Icon(Icons.add,size: 20,color: Colors.cyan,),
        onPressed: (){},
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20.0,
          backgroundColor: Colors.amber,
          currentIndex: 2,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          ],
          onTap: (int index){
          if(index==0){

          }
            if(index==1){

            }
            if(index==2){

            }
          },

      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue,image: DecorationImage(
                  image: NetworkImage("https://www.bssnews.net/assets/news_photos/2022/03/23/image-51915-1648040891.jpg"),
              fit: BoxFit.cover)),
              accountName: Text("MD Sahkil Hoaasin",style: TextStyle(color: Colors.black),),
              accountEmail: Text("mdshakilhosain720@gmail.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyraxQyinCM_BjUccItcIB_7FA0yPOGs8dBAkrne35&s"),


            )),

            Divider(height: 5,
            color: Colors.amber,),
            ListTile(
             leading: Icon(Icons.home), title:Text("Home") ,onTap: (){MySnackBar("Home", context);},
            ),
            ListTile(leading: Icon(Icons.settings),title: Text("Setting"),onTap: (){MySnackBar("Home", context);},),
            ListTile(leading: Icon(Icons.email),title: Text("Email"),onTap: (){MySnackBar("Home", context);},),
            ListTile(leading: Icon(Icons.favorite),title: Text("Favorite"),onTap: (){MySnackBar("Home", context);},),

          ],
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue,image: DecorationImage(
                  image: NetworkImage("https://www.bssnews.net/assets/news_photos/2022/03/23/image-51915-1648040891.jpg"),
                  fit: BoxFit.cover)),
              accountName: Text("MD Sahkil Hoaasin",style: TextStyle(color: Colors.black),),
              accountEmail: Text("mdshakilhosain720@gmail.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyraxQyinCM_BjUccItcIB_7FA0yPOGs8dBAkrne35&s"),


            )),

            Divider(height: 5,
              color: Colors.amber,),
            ListTile(
              leading: Icon(Icons.home), title:Text("Home") ,onTap: (){MySnackBar("Home", context);},
            ),
            ListTile(leading: Icon(Icons.settings),title: Text("Setting"),onTap: (){MySnackBar("Home", context);},),
            ListTile(leading: Icon(Icons.email),title: Text("Email"),onTap: (){MySnackBar("Home", context);},),
            ListTile(leading: Icon(Icons.favorite),title: Text("Favorite"),onTap: (){MySnackBar("Home", context);},),

          ],
        ),
      ),

      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(25),
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.blue,border: Border.all(color: Colors.black,width: 6),),
           
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnnu6obVk9X7KpF7ddIVK0Xukk7GK5uWC1GA&usqp=CAU",
        fit: BoxFit.cover,)
      ),

    );
  }
}

