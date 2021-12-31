import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import '../../constant.dart';

class Courses extends StatefulWidget {
  const Courses({ Key? key }) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
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
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Silver.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Silver Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),)
                      ],
                    )
                  ],
                ),
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
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Silver.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Silver Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),)
                      ],
                    )
                  ],
                ),
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
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Silver.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Silver Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),)
                      ],
                    )
                  ],
                ),
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
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Silver.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Silver Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),)
                      ],
                    )
                  ],
                ),
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
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Silver.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Silver Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
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
                    Image.asset("assets/images/Bronze.jpg",
                      width: 90,),
                    SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bronze Package',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
                        Text('Rp 200.000',
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),)
                      ],
                    )
                  ],
                ),
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
                searchField(),
                SizedBox(height: 10),
                listCategories(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Trending Now',
                      style: TextStyle (
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)
                  ),
                ),
                trendingBook(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('GM Mun Courses',
                      style: TextStyle (
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)
                  ),
                ),
                SizedBox(height: 8),
                GMMUN(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('ISS Courses',
                      style: TextStyle (
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)
                  ),
                ),
                SizedBox(height: 8),
                iss(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Be Global Courses',
                      style: TextStyle (
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)
                  ),
                ),
                SizedBox(height: 8),
                beglobal(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Wander english Courses',
                      style: TextStyle (
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)
                  ),
                ),
                SizedBox(height: 8),
                wanderenglish(),

              ]
              )
          )
          ]
          )
  );
        }

  
}