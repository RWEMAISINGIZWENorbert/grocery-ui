import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/models/category_model.dart';

class MyHomePage extends StatelessWidget {

  const MyHomePage ({super.key});

  @override
  Widget build(BuildContext context) {
      List<CategoryModel> category = CategoryModel.initCategory();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )
        ),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Container(
              margin: EdgeInsets.only(right: 24, left: 22, top:4 ,bottom: 4,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [          
                  Text('Daily\ngrocery food', style: Theme.of(context).textTheme.displayMedium,),
                  Icon(Icons.search, size: 36,)
                ],
                ),
            ),
            const SizedBox(height: 12,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
             Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                 List.generate(category.length, (index) => 
                   Container(
                   margin: EdgeInsets.only(left: 10, right: 10),
                   padding: EdgeInsets.only(top: 10, bottom: 10,  left: 50, right: 50),
                   decoration: BoxDecoration(
                    color: category[index] == 0 ? const Color.fromARGB(255, 19, 48, 92) :  Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)
                   ),
                   child: Text(
                    category[index].name,
                    style: TextTheme.of(context).displaySmall,
                    ),
                  )
              ), 
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
                    Text('Popular fruits', 
                    style: GoogleFonts.poppins(
                     color: const Color.fromARGB(255, 19, 48, 92),
                     fontSize: 18,
                     fontWeight: FontWeight.w700
                    ),
                    ),
                    Text("see All", 
                    )
                  ],)
              ],
            ),
          )
          ],
        ),
      ),
      bottomNavigationBar: _bottomBar(),
    );
  }

  BottomNavigationBar _bottomBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: 'Home'
        ),
        BottomNavigationBarItem(
         icon: Icon(Icons.production_quantity_limits_sharp),
         label: 'Order'
        ),
        BottomNavigationBarItem(
         icon: Icon(Icons.car_crash),
         label: 'Cart'
        ),
        BottomNavigationBarItem(
         icon: Icon(Icons.dashboard),
         label: 'more'
        ),
      ],
    );
  }
}