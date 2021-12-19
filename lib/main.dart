import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(textTheme: TextTheme(body1: TextStyle(color: fCL))),
      home: MainCard(),
    );
  }
}

class MainCard extends StatefulWidget {
  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  var shots = 0;

  var followers = 0;

  var likes = 0;

  void addShots() {
    setState(() {
      shots += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MButton(
                      icon: Icons.arrow_back,
                    ),
                    MButton(
                      icon: Icons.menu,
                    ),
                  ],
                ),
                AvatorImage(),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Oakar Hlyan Htike',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Bago',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Android and IOS Mobile Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Lobster',
                      color: Colors.grey.shade700),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MButton(icon: FontAwesomeIcons.facebookF),
                    SizedBox(
                      width: 25,
                    ),
                    MButton(icon: FontAwesomeIcons.github),
                    SizedBox(
                      width: 25,
                    ),
                    MButton(icon: FontAwesomeIcons.instagram),
                    SizedBox(
                      width: 25,
                    ),
                    MButton(icon: Icons.email),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    SocialBox(
                      icon: FontAwesomeIcons.dribbble,
                      count: '35',
                      catagory: 'shots',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SocialBox(
                      icon: FontAwesomeIcons.userAlt,
                      count: '1.2k',
                      catagory: 'followers',
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SocialBox(
                      icon: FontAwesomeIcons.solidHeart,
                      count: '2.1k',
                      catagory: 'likes',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SocialBox(
                      icon: FontAwesomeIcons.user,
                      count: '484',
                      catagory: 'following',
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SocialBox(
                      icon: FontAwesomeIcons.glassWhiskey,
                      count: '97',
                      catagory: 'buckets',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SocialBox(
                      icon: FontAwesomeIcons.folderMinus,
                      count: '7',
                      catagory: 'projects',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String catagory;
  SocialBox({required this.icon, required this.count, required this.catagory});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black.withOpacity(0.075),
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                offset: Offset(3, 3),
                blurRadius: 3,
                spreadRadius: -3),
          ],
        ),
        child: Row(
          children: [
            FaIcon(
              icon,
              color: Colors.pink.shade800,
              size: 20,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 3,
            ),
            Text(catagory)
          ],
        ),
      ),
    );
  }
}

class AvatorImage extends StatelessWidget {
  const AvatorImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade100,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.075),
                offset: Offset(10, 10),
                blurRadius: 10),
            BoxShadow(
                color: Colors.white, offset: Offset(-10, -10), blurRadius: 10),
          ]),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade100,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.075),
                  offset: Offset(10, 10),
                  blurRadius: 10),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-10, -10),
                  blurRadius: 10),
            ]),
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/OH.jpeg',
                ),
              )),
        ),
      ),
    );
  }
}

class MButton extends StatelessWidget {
  final IconData icon;
  MButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade100,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.075),
                offset: Offset(10, 10),
                blurRadius: 10.0),
            BoxShadow(
                color: Colors.white, blurRadius: 10.0, offset: Offset(-10, -10))
          ]),
      child: Icon(
        icon,
        color: Colors.grey.shade600,
      ),
    );
  }
}
