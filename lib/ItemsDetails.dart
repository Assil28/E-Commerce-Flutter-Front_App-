
import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final data;
  const ItemsDetails({super.key,this.data});



  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.grey),
        backgroundColor:Colors.grey[200],
        elevation: 0.0,
        title:
          const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag_outlined,color: Colors.orange),
            Text(" Ecommerce ",style:TextStyle(color: Colors.black)),
            Text(" App",style:TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "*"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "*"),
        ],),
      body: ListView(children: [
            Image.asset(widget.data['image'],height: 300,),
       Container(
         margin: EdgeInsets.only(top: 3),
         child:
       Text(widget.data["title"],
         textAlign: TextAlign.center,
       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

       ),
       ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child:
        Text(widget.data["subtitle"],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),),
        ),
        Container(
          margin: EdgeInsets.only(top: 8,bottom: 25),
          child:
          Text(widget.data["price"],
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Color : ",style: TextStyle(color: Colors.grey,fontSize: 20),),
            SizedBox(width: 10,),
            Container(
              height: 20,width: 20,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.orange)
              ),
            ),
            Text("  Grey"),

            SizedBox(width: 20,),
            Container(
              height: 20,width: 20,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black)
              ),
            ),
            Text("  Black")
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child:
        Text("Size :   34   35   36   37" , textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.grey),),),
        
        Container(
          margin:EdgeInsets.symmetric(horizontal: 150,vertical: 20) ,
          child: MaterialButton(
            color: Colors.black,
            onPressed: (){},
            child: Text("Add To Cart",style: TextStyle(color: Colors.white),),
          ),
        )
      ]),
    );
  }

}


