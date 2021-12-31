import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:magang/constant.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {

  const Home({
    Key? key,
  }) : super(key: key);


  @override
  State<Home> createState() => _BackgroundState();
}

class _BackgroundState extends State<Home> {
  List<String> _categories= [
        'All Courses',
        'GM MUN',
        'Be Global',
        'SDGs Summit',
        'Sebulan Menjadi',
        'Wander English',
  ];

int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    Widget header(){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape:
            BoxShape.circle,
                  image: DecorationImage(image:
                  AssetImage('assets/images/tes.png')
                  )
              ),
            ),
            SizedBox(width: 8),
            Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Text(
                  'Halo, Sharif',
            style: TextStyle (fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black
            )
            ),
              Text(
                  'Advanced Copy Writer',
                  style: TextStyle (fontWeight: FontWeight.w800, fontSize: 12, color: Colors.black38
                  )
              ),
            ],
            )
          ],
        ),
      );
    }

    Widget searchField(){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search Course',
              fillColor: kPrimaryLightColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                  Radius.circular(12),
                    ),
              ),
            isCollapsed: true,
            contentPadding: EdgeInsets.all(18),
            suffixIcon: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(12),
                )
              ),
                  child: Icon(
               Icons.search_rounded,
               color: Colors.white,
            ),
            )
              )
          ),
        );
    }

    Widget Kupon(){
      return  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              Container(
                width: 220,
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/1.png',
                      fit: BoxFit.cover ,)
                  ],
                ),
              ),
              Container(
                width: 220,
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/4.png',
                      fit: BoxFit.cover,)
                  ],
                ),
              )
            ]
        ),
      );
    }

    Widget RecentCourse(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              Container(
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/10.png",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Be Global',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        CircularPercentIndicator(
                          reverse: true,
                          radius: 50,
                          lineWidth: 7,
                          animation: true,
                          percent: 0.9,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: kPrimaryColor,
                        ),
                        Text('90%: Completed',
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/11.png",
                      width: 90,
                    ),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GM Mun',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        CircularPercentIndicator(
                          reverse: true,
                          radius: 50,
                          lineWidth: 7,
                          animation: true,
                          percent: 0.5,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: kPrimaryColor,
                          ),
                        Text('90%: Completed',
                          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),)
                      ],
                    )
                  ],
                ),
              )


                      ]
                    ),
              );

    }

    Widget categories(int index){
      return InkWell(
        onTap: (){
          setState(() {
            _isSelected = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10 ),
          decoration: BoxDecoration(
            color: _isSelected == index ? kPrimaryColor : Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            _categories[index],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: _isSelected == index? Colors.white : Colors.grey )
          )
        ),
      );
    }
    Widget listCategories(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _categories
          .asMap()
          .entries
          .map((MapEntry map) => categories(map.key)).toList(),
        )
      );
    }

    Widget trendingBook(){
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,

        child: Row(
          children: [
          Container(
            height: 160,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage('assets/images/Bronze.jpg'),
          )
          ),
          ),

          SizedBox(height: 8),
          Text(
            'Silver Bundle',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            '750.000',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
      ),
            Container(
        height: 160,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage('assets/images/Silver.jpg'),
          )
        ),
            ),

            SizedBox(height: 8),
            Text(
              'Gold Bundle',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              '750.000',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
            ),
            Container(
              height: 160,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/images/Gold.jpg'),
                  )
              ),
            ),

            SizedBox(height: 8),
            Text(
              'Bronze Bundle',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              '750.000',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
            ),
        ],
        )
      );
    }

    Widget GMMUN(){
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Row(
            children: [
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Bronze.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'MUN 3',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Silver.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'MUN 2',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Gold.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'MUN 1',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
            ],
          )
      );
    }

    Widget iss(){
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Row(
            children: [
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Gold.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'ISS 1',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Silver.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'ISS 2',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Bronze.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'ISS3',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
            ],
          )
      );
    }

    Widget beglobal(){
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Row(
            children: [
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Bronze.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'Silver Bundle',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Silver.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'Gold Bundle',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Gold.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'Bronze Bundle',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
            ],
          )
      );
    }

    Widget wanderenglish(){
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Row(
            children: [
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Bronze.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'Silver Bundle',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Silver.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'Gold Bundle',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/Gold.jpg'),
                    )
                ),
              ),

              SizedBox(height: 8),
              Text(
                'Bronze Bundle',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                '750.000',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black45),
              ),
            ],
          )
      );
    }


    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox( height: 30),
                Kupon(),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Recent Course',
                      style: TextStyle (
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)
                  ),
                ),
                RecentCourse(),
                SizedBox(height: 170),
      ],
    ),
            ),


        ]
       ),


    );

  }
}