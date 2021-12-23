import 'package:e_mart/model/model.dart';
import 'package:e_mart/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'deatils_page.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <String>image =[
      "assets/images/1.png",
      "assets/images/2.png",
      "assets/images/3.png",
      "assets/images/4.png",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('E-mart'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.yard, size: 40,),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network('https://images.pexels.com/photos/1280162/pexels-photo-1280162.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', fit: BoxFit.cover,),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: GestureDetector(
                      onTap: (){
                        print('click');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('See all', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      )),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.indigo[200],
                  ),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.indigo[200],
                  ),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.indigo[200],
                  ),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.indigo[200],
                  ),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.indigo[200],
                  ),
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Arrivals', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: GestureDetector(
                      onTap: (){
                        print('click');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('See all', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      )),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 190,
              color: Colors.grey,
              child: GridView.builder(
                itemCount: product.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: (BuildContext contex, int index){
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.indigo,
                    // child: Image.asset(image[index], height: 50,width: 40,),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProdectDetails(product: product[index],)));
                              },
                              child: Container(
                                height: 150,
                                width: 180,
                                color: Colors.teal,
                                child: Image.asset(image[index], fit: BoxFit.cover,),
                              ),
                            ),
                            Icon(Icons.favorite)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("\$ 160", style: TextStyle(color: Colors.white),),
                        SizedBox(height: 5,),
                        ElevatedButton(onPressed: (){}, child: Text("Cart"))
                      ],
                    ),
                  );
                  }


),
            )
          ],
        ),
      ),
    );
  }
}






// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Container(
//                 padding: EdgeInsets.only(left: 50),
//                 height: MediaQuery.of(context).size.height*0.25,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
//                   color: Colors.deepPurpleAccent,),
//                 child: Row(
//                   children: [
//                     Container(
//                         width: MediaQuery.of(context).size.width*0.35,
//                         child: Text("SHOPIN", style: large,)),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width*0.4,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(20)
//                         ),
//                         child: TextField(
//                           decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.search),
//                               hintText: "Search",
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(20)
//                               )
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: Container(
//                         alignment: Alignment.center,
//                         width: MediaQuery.of(context).size.width*0.1,
//                         height: MediaQuery.of(context).size.height*0.09,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(40)
//                         ),
//                         child: Icon(Icons.add_a_photo_outlined,),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 120.0, left: 70),
//                 child: Container(
//                   alignment: Alignment(0,0),
//                   height: 200,
//                   width: 350,
//                   color: Colors.red,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//
//     );
//   }
// }