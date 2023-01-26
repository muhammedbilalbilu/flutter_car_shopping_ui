import 'package:flutter/material.dart';
import 'package:flutter_car_shopping_ui/screenSize.dart';
import 'package:flutter_car_shopping_ui/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List car = ['All', 'SUV', 'ELC', 'VAN', 'SDN'];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'image/Vector.png',
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'image/Vector (1).png',
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Bangalore',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kQuestrialSemibold.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'image/Vector (2).png',
                          height: 8,
                        ),
                      ],
                    ),
                    Image.asset(
                      'image/profile.png',
                      height: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 1,
                ),
                Text(
                  'Explore',
                  style: kQuestrialSemibold.copyWith(
                      fontSize: SizeConfig.screenHeight! * 0.04),
                ),
                Text(
                  'The best & favourite car',
                  style: kQuestrialMedium.copyWith(
                      fontSize: SizeConfig.screenHeight! * 0.018,
                      color: kGreyColor),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 3,
                ),
                Container(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: car.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: index == 0 ? 20 : 50,
                                        right: index == 10 - 1 ? 30 : 0),
                                    child: Text(
                                      car[index],
                                      style: kQuestrialRegular.copyWith(
                                          color: kGreyColor,
                                          fontSize:
                                              SizeConfig.screenHeight! * 0.02),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: current == index,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: index == 0 ? 20 : 50,
                                        right: index == 10 - 1 ? 30 : 0),
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: kCircleColor),
                                    ),
                                  ))
                            ],
                          )),
                ),
                Image.asset('image/car3.png'),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Brands',
                      style: kQuestrialSemibold.copyWith(
                          fontSize: SizeConfig.screenHeight! * 0.029),
                    ),
                    Text(
                      'See all',
                      style: kQuestrialRegular.copyWith(
                          fontSize: SizeConfig.screenHeight! * 0.02,
                          color: kGreyColor),
                    ),
                  ],
                ),
                Container(
                  height: 118,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 10 : 15,
                                right: index == 10 - 1 ? 30 : 0),
                            child: Column(
                              children: [
                                Container(
                                  height: 94,
                                  width: 82,
                                  child: Image.asset('image/audi.png'),
                                ),
                                Text(
                                  'Audi',
                                  style: kQuestrialRegular.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Lexend',
                                      color: kGreyColor),
                                )
                              ],
                            ),
                          )),
                ),
              ],
            ),
          ))),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/Home.png',
                          height: 30,
                          width: 30,
                          color: kGreyColor,
                        ),
                      ),
                      Text('Home')
                    ],
                  )
                : Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/Home.png',
                          height: 30,
                          width: 30,
                          color: kGreyColor,
                        ),
                      ),
                      Text('Home')
                    ],
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/search.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/search.png',
                          height: 40,
                          width: 40,
                          color: kGreyColor,
                        ),
                      ),
                    ],
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/notification.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/notification.png',
                          height: 50,
                          width: 50,
                          color: kGreyColor,
                        ),
                      ),
                    ],
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/settings.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/settings.png',
                          height: 40,
                          width: 40,
                          color: kGreyColor,
                        ),
                      ),
                    ],
                  ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
