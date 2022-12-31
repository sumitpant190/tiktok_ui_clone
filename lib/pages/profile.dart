import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/utils/tabs/tab1.dart';
import 'package:tiktok_ui_clone/utils/tabs/tab2.dart';
import 'package:tiktok_ui_clone/utils/tabs/tab3.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'Sumit Pant ',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: Icon(
            Icons.person_add,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //profile photo
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.grey[200], shape: BoxShape.circle),
            ),
            SizedBox(
              height: 20,
            ),
            // username
            Text(
              '@createdbySumit',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),

            //number of followings. follower, likes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          '40',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '100',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          '50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),

            //buttons -> edit profile, insta link, bookmark
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Text('Edit Profile',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        )),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.black,
                      )),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            //bio
            Text(
              'bio here',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(
              height: 5,
            ),

            //default tab controller
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3, color: Colors.black),
              ),
              Tab(
                icon: Icon(Icons.favorite, color: Colors.black),
              ),
              Tab(
                  icon: Icon(
                Icons.lock_outlined,
                color: Colors.black,
              ))
            ]),

            Expanded(
                child: TabBarView(
              children: [ProfileTab1(), ProfileTab2(), ProfileTab3()],
            ))
          ],
        ),
      ),
    );
  }
}
