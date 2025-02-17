import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyItem extends StatelessWidget {
  const MyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       height: MediaQuery.of(context).size.height * 0.78,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )
            ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/');
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 16, top: 20),
                    child: Icon(Icons.arrow_circle_left_sharp, size: 26,),
                  ),
                )
              ],
            ),
            Center(
                child: Container(
                  margin: EdgeInsets.only(top: 46),
                  child: Image.network('https://raw.githubusercontent.com/RWEMAISINGIZWENorbert/Flutter_UI-Design/refs/heads/main/assets/grocery/apple.png',
                  width: 120,
                  height: 100, 
                  ),
                ),  
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                     children: [
                      TextSpan(text: 'Fresh Apple\n', style: Theme.of(context).textTheme.displayMedium),
                      TextSpan(text: 'Available in stock', style:  GoogleFonts.poppins( color: Colors.grey[500],  fontWeight: FontWeight.w500,   fontSize: 15,  ),)
                     ]
                  )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 19, 48, 92),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text('-', style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20
                          ),
                          ),
                        ),
                      ),
                      Text('2', style: Theme.of(context).textTheme.displaySmall,),
                        Container(
                        width: 28,
                        height: 28,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 19, 48, 92),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text('+', style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20
                          ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8),
            child:   RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'Product Description\n', style: Theme.of(context).textTheme.displayMedium),
                  TextSpan(
                    text: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Qui corrupti magnam, ratione aspernatur eveniet ab iure animi quasi perspiciatis error nam suscipit obcaecati veritatis eligendi voluptates tempora incidunt doloribus dolorum.', 
                    style: GoogleFonts.poppins( color: Colors.grey[500],  fontWeight: FontWeight.w500,   fontSize: 15, )),
                ]
              ),
            ),
            ),
            Column()
          ],
        ),    
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children:   <TextSpan>[
                  TextSpan(text: '\$10.45',  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                   fontWeight: FontWeight.bold
                                                   )
                  ),
                  TextSpan(text: '/kg', style: Theme.of(context).textTheme.displaySmall)
              ]
            )
            )
        ],
      ),
    );
  }
}