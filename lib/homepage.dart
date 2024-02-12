import 'package:flutter/material.dart';

import 'ItemsDetails.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});



  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List categories=[
    {"iconname":Icons.laptop, "title":"Laptop"},
    {"iconname":Icons.phone_android_outlined, "title":"Mobile"},
    {"iconname":Icons.electric_bike, "title":"Electric Bike"},
    {"iconname":Icons.card_giftcard_outlined, "title":"Gifts"},
    {"iconname":Icons.electric_car_outlined, "title":"Cars"},
  ];

  List items=[
    {"image":"images/lenovo.jpeg", "title":"Laptop", "subtitle":"New Laptop of Lenovo","price":"1550 Dt"},
    {"image":"images/huawei.jpeg", "title":"Mobile","subtitle":"New Mobile of Huawei","price":"750 Dt"},
    {"image":"images/electricbike.jpeg", "title":"Electric Bike","subtitle":"New Electric Bike of Apple","price":"3550 Dt"},
    {"image":"images/electriccar.jpeg", "title":"Cars","subtitle":"New Cars Bike of Tesla","price":"310000 Dt"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
       BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "*"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "*"),
      ],),
      body:Container(
        padding: EdgeInsets.all(20),
      child: ListView(children: [
          Row(children: [
           Expanded(child:  TextFormField(
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.search),
               hintText: "Search",
               border: InputBorder.none,
             fillColor: Colors.grey[200],
               filled: true,
             ) ,
           )),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.menu,size:40),
            ),
          ],),

        Container(height: 30),

        Text("Categories",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),

        Container(height: 20),
       Container(
         height:100,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: categories.length,
           itemBuilder:(context,i) {

             return Container(
               margin: EdgeInsets.only(right: 10),
               child: Column(
                 children: [
                 Container(
                   decoration: BoxDecoration(
                       color: Colors.grey[200],
                       borderRadius: BorderRadius.circular(100)
                   ),
                   child: Icon(categories[i]['iconname'],size: 40,),
                   padding:EdgeInsets.all(15),),
                 Text(categories[i]['title'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),
                 )
               ],
               ),
             );
           },),
       ),

        Container(height: 30),
        Text("Best Selling",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
        Container(height: 20),

        GridView.builder(
          itemCount: items.length,
          physics:NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250),
  itemBuilder:(context,i)
    {
      return InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ItemsDetails(data:items[i])));
        },
        child: Card(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: 300,
              color: Colors.grey[200],
              child: Image.asset(items[i]['image'],
              height: 100,fit: BoxFit.fill),

            ),
            Text(items[i]["title"],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
            Container(height: 2,),
            Text(items[i]["subtitle"],style: TextStyle(fontSize: 14,color: Colors.grey),),
            Container(height: 6,),
            Text(items[i]["price"],style: TextStyle(fontSize: 14,color: Colors.orange,fontWeight: FontWeight.bold),)

          ],
        )
        ),
      );
    }

        )

      ],),
      )
    );
  }

}


