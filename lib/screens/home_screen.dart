import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/models/information.dart';
import 'package:flutter_app/models/pics.dart';
import 'package:flutter_app/models/places.dart';
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
                        color: Colors.black,
                      ),
                      child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                    ),
                    Container(
                      height: 57.5,
                      width: 57.5,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.5),
                        color: Colors.black,
                      ),
                      child: SvgPicture.asset('assets/svg/icon_search.svg'),
                    )
                  ],
                ),
              ),
              // Text Widget for title
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: Padding(padding: EdgeInsets.only(top: 50, left: 30),
                  child: Text("Aurangabad Explorer",style: GoogleFonts.playfairDisplay(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),)
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
                      fontSize: 24, fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelStyle: GoogleFonts.lato(
                      fontSize: 12, fontWeight: FontWeight.w700,
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
                  activeDotColor: Colors.black54,
                  dotColor: Colors.black38,
                  dotHeight: 4.8,
                  dotWidth: 6,
                  spacing: 4.8),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 33.6, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Tourism Places", style: GoogleFonts.playfairDisplay(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    ),
                    Text(
                      "Show All",
                      style: GoogleFonts.lato(
                        fontSize: 16.8,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              //list view for places
              Container(
                margin: EdgeInsets.only(top: 33.6),
                height: 45.6,
                child: ListView.builder(itemCount: places.length ,
                scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 28.8, right: 9.6),
                  itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 19.2),
                    height: 45.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),

                    ),
                    child: Container(
                    decoration: BoxDecoration(color: Colors.grey),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 16.2,
                          )
                          ,


                          Image.asset(places[index].image,
                          height: 36.8),
                          SizedBox(
                            width: 16.2,
                          ),



                        ],
                      ),
                    ),
                  );
                    },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 28.8, bottom: 16.8),
                height: 124.8,
                child: ListView.builder(
                  itemCount: pics.length,
                  padding: EdgeInsets.only(left: 28.8, right: 12),
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
                  }

                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
