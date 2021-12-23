import 'package:e_mart/model/model.dart';
import 'package:flutter/material.dart';

class ProdectDetails extends StatefulWidget {
  const ProdectDetails({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  _ProdectDetailsState createState() => _ProdectDetailsState();
}

class _ProdectDetailsState extends State<ProdectDetails> {
  @override
  Widget build(BuildContext context) {
    Product p=widget.product;
    return Scaffold(
      appBar: AppBar(
        title: Text('Deatils Page'),
        leading: IconButton(
            onPressed:(){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),)
      ),
      body: Column(
        children: [
          Image.network(p.img),
          Container(
            height: 285,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 78,
                  width: 78,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(5),),
                ),
              ],
            ),
          ),
          Text("Description"),
          Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
          SizedBox(width: 10,),
          Container(),
        ],
      ),
    );
  }
}

// class ProdectDetailsArgument{
// final ProductModel productModel;
//
// }