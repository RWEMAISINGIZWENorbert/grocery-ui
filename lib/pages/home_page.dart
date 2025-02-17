import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/models/products_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> category = CategoryModel.initCategory();
    List<ProductsModel> products = ProductsModel.initProducts();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.78,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Container(
              margin: EdgeInsets.only(
                right: 24,
                left: 22,
                top: 4,
                bottom: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily\ngrocery food',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Icon(
                    Icons.search,
                    size: 36,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      category.length,
                      (index) => Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 50, right: 50),
                            decoration: BoxDecoration(
                                color: category[index] == 0
                                    ? const Color.fromARGB(255, 19, 48, 92)
                                    : Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              category[index].name,
                              style: TextTheme.of(context).displaySmall,
                            ),
                          )),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular fruits',
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 19, 48, 92),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "see All",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      // color: Colors.blue,
                      width: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.all(6),
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 370,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.9
                          ),
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return Container(
                              // height: MediaQuery.of(context).size.height * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Image.network(
                                        products[index].imageUrl,
                                        fit: BoxFit.fitWidth,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: Text(
                                          products[index].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge,
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: Text(
                                          "${products[index].calories} cal",
                                          style: GoogleFonts.poppins(
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        )
                                        ),
                                    Container(
                                      margin: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(text: TextSpan(
                                             children: <TextSpan>[
                                                TextSpan(text:"\$${products[index].unityPrice}", style: GoogleFonts.poppins(
                                                  color: Colors.amber,
                                                  fontSize: 20,
                                               fontWeight: FontWeight.bold
                                          ),
                                          ),  
                                          TextSpan( text: '/kg', style: GoogleFonts.poppins(
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                          ),
                                             ]
                                          )),
                                          Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Icon(Icons.add, color: Colors.white,),
                                          )
                                        ],
                                      ),
                                    )    
                                  ]),
                            );
                          }
                          )
                      // ListView.builder(
                      //   scrollDirection: Axis.horizontal,
                      //   itemCount: products.length,
                      //   itemBuilder: (context, index){
                      //     return Container(
                      //       width: 400,
                      //       height: MediaQuery.of(context).size.height * 0.2,
                      //       margin: EdgeInsets.all(10),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(8),
                      //         color: Colors.grey[200],
                      //       ),
                      //     );
                      //   },
                      //   ),
                      )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _bottomBar1(context),
    );
  }

  BottomNavigationBar _bottomBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index){},
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits_sharp), label: 'Order'),
        BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'more'),
      ],
    );
  }
}

Container _bottomBar1(context){
  return Container(
    margin: EdgeInsets.only(top: 16, left: 8, right: 8),
    height: MediaQuery.of(context).size.height * 0.2,
    child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
          Column(
            children: [
              Icon(Icons.home, color: Colors.white,size: 24,),
              Text('Home', style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18
              ),
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.production_quantity_limits_sharp, color: Colors.white,size: 24,),
              Text('Order', style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18
              ),)
            ],
          ),
          Column(
            children: [
              Icon(Icons.car_crash, color: Colors.white,size: 24,),
              Text('Cart', style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18
              ),)
            ],
          ),
          Column(
            children: [
              Icon(Icons.dashboard, color: Colors.white,size: 24,),
              Text('more', style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18
              ),)
            ],
          ),
     ],
    ),
  );
}