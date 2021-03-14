import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/models/images.dart';

import 'package:flutter_app/models/information.dart';
import 'package:flutter_app/models/pics.dart';
import 'package:flutter_app/screens/abad.dart';
import 'package:flutter_app/screens/food.dart';
import 'package:flutter_app/screens/tourism.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_app/widgets/custom_tab_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


@override
  Widget build(BuildContext context) {
    final _pageContoller = PageController(viewportFraction: 0.877);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.grey),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              //custom navigation
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 57.5,
                margin: EdgeInsets.only(top: 28.5,left: 28.5,right: 28.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 57.5,
                      width: 57.5,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.black54,
                      ),
                      child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                    ),
                    Container(
                      height: 57.5,
                      width: 57.5,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.5),
                        color: Colors.black54,
                      ),
                      child: SvgPicture.asset('assets/svg/icon_search.svg'),
                    )
                  ],
                ),
              ),
              // Text Widget for title
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: Container(
                  decoration:BoxDecoration(color: Colors.black38,

                  ),
                  child: Center(

                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) => Private(),
                        ));
                      },
                      child: Text("Aurangabad ",style: GoogleFonts.playfairDisplay(
                        fontSize: 54,
                        fontWeight: FontWeight.w700,
                        color: Colors.orangeAccent,
                      ),),
                    ),




                  ),
                ),
              ),


              // Custom tab bar with Custom Indicator
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 14, top: 28),
                child: DefaultTabController(length: 3,child: TabBar(labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    indicatorPadding:  EdgeInsets.only(left: 14.4, right: 14.4),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    labelStyle: GoogleFonts.lato(
                      fontSize: 28, fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelStyle: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.w700,
                    ),
                    indicator: RoundedRectangleTabIndicator(
                      color: Colors.black, weight: 2.4, width: 14.4),
                    tabs: [
                      Tab(
                    child: Container(

                    child: Text(" About Aurangabad"),
                    ),

                    ),

                  Tab(
                    child: Container(
                      child: Text(" Tourism Places "),
                    ),
                  ),
                  Tab(
                    child: Container(

                      child: Text(" Food Explorer"),
                    ),
                  )
                 ]),
                ),
              ),



               //List view n page view
              // About Aurangabad
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageContoller,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(informations.length, (int index) => Container(
                    margin: EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(informations[index].image),)
                    ),

                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 19.2,
                          left: 19.2,
                          child: ClipRRect(
                            borderRadius :BorderRadius.circular(4.8) ,
                        child: BackdropFilter(filter: ImageFilter.blur(
                          sigmaY: 19.2, sigmaX: 19.2,),
                          child: Container(
                            height: 36,
                            padding: EdgeInsets.only(left: 16.72, right: 14.4),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/svg/icon_location.svg'),
                                SizedBox(width: 9.52),
                                Text(informations[index].name,
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 16.8,
                                ),),
                              ],

                            ),

                          ),
                        ),
                  ),
                        )
                      ],
                    ),
                  )),

                ),
              ),

              //using smoothpageindicator lib
              Padding(padding: EdgeInsets.only(left: 28.8, top: 28.8),
              child: SmoothPageIndicator(controller: _pageContoller, count: informations.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.black,
                  dotColor: Colors.orange,
                  dotHeight: 4.8,
                  dotWidth: 6,
                  spacing: 4.8),
              ),
              ),
              SizedBox(
                width: 9.2,
                child: Container(
                  decoration: BoxDecoration(color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(4.0),
                  ),


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                           onTap : (){
                           Navigator.push(context, MaterialPageRoute(
                                         builder: (_) => Travel(),
                        ));
                       },

                        child: Text("Tourism Places", style: GoogleFonts.playfairDisplay(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,

                        ),

                        ),
                      ),


                    ],
                  ),
                ),
              ),

              //list view for places

              Container(
                margin: EdgeInsets.only(top: 20.8, bottom: 16.8),
                height: 114.8,

                child: ListView.builder(
                  itemCount: pics.length,
                  padding: EdgeInsets.only(left: 20.8, right: 12),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return Container(
                      height: 124.8,
                      width: 188.4,
                      margin: EdgeInsets.only(right: 16.8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(pics[index].image)         ,
                          
                        ),
                      ),

                    );
                  },



                ),
              ),
              SizedBox(
                width: 6.2,
                child: Container(

                    decoration: BoxDecoration(color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(4.0),
                    ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap : (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (_) => Privacy(),
                          ));


                        },
                        child: Text("Food Explorer", style: GoogleFonts.playfairDisplay(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,


                        ),

                        ),
                      ),
                Icon(Icons.arrow_forward),


                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.8, bottom: 14.8),
                height: 100.8,

                child: ListView.builder(
                  itemCount: food.length,
                  padding: EdgeInsets.only(left: 18.8, right: 10),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return Container(
                      height: 120.8,
                      width: 180.4,
                      margin: EdgeInsets.only(right: 10.8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(food[index].image)         ,

                        ),
                      ),

                    );
                  },



                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
