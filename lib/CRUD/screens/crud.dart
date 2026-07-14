import 'package:flutter/material.dart';
import 'package:product_list_with_api/CRUD/controller/product_controller.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  ProductController productController = ProductController();

  Future fetchData() async {
    await productController.getProduct();

    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Lists'),
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.80,
            ),
            itemCount: productController.products.length,
            itemBuilder: (context, index) {
              final item = productController.products[index];
              return Column(
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.network(item.img.toString()),
                  ),
                  Text(item.productName.toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Text("${item.totalPrice}\$"),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit_note, color: Colors.orange,),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,),),

                    ],
                  ),
                ],
              );
            }
        ),
    );
  }
}