import 'package:flutter/material.dart';
import 'package:portfolio/WeatherDetails/convert_icon.dart';
import 'package:portfolio/WeatherDetails/weather_forecast_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:intl/intl.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class HomepageWeb{



  Widget HomeScreen(BuildContext context,String description, String temp){
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('kk:mm').format(now);
    String formattedDate = DateFormat('EEE d MMM').format(now);

    // showToast("Try This in Mobile too.", Icons.mobile_friendly_sharp, context);


    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/web/web_bg.jpg',
                  ),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //Apps
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Projects
                        Column(
                          children: [
                            InkWell(
                              onTap :(){
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return Stack(
                                          clipBehavior: Clip.none, alignment: Alignment.center,
                                          children:[
                                            Container(
                                              height: MediaQuery.of(context).size.height-100,
                                              width: MediaQuery.of(context).size.width-200,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.grey.shade800
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 50,
                                                      padding: const EdgeInsets.all(10.0),
                                                      child:const Text(
                                                        "My Projects",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 30,
                                                            fontFamily: 'JosefinSans',
                                                            decoration: TextDecoration.none
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: MediaQuery.of(context).size.height-180,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),
                                                          color: Colors.grey.shade900
                                                      ),
                                                      child: ListView.separated(
                                                          itemBuilder: (_,index){
                                                            return projectList[index];
                                                          },
                                                          separatorBuilder:(BuildContext context,int index){
                                                            return const Divider(color: Colors.white,);
                                                          } ,
                                                          itemCount: projectList.length
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),

                                          ]
                                      );
                                    }
                                );
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/web/projects_icon.png'),
                                  )
                                ),
                              ),
                            ),
                            const Text(
                                "Projects",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                                ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12,),

                        //Resume
                        Column(
                          children: [
                            InkWell(
                              onTap :()async{
                                Uri url = Uri.parse("https://drive.google.com/file/d/1Kyrx6h2KTBGJSARvfz8NwbSmX9ajFPSP/view?usp=drive_link");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print("Failed");
                                }
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/web/resume.png'),
                                    )
                                ),
                              ),
                            ),
                            Text(
                              "Resume",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12,),

                        //Github
                        Column(
                          children: [
                            InkWell(
                              onTap :()async{
                                Uri url = Uri.parse("https://github.com/Bhanubpsn");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print("Failed");
                                }
                              },
                              child: Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/github_icon.png'),
                                    )
                                ),
                              ),
                            ),
                            Text(
                              "Github",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12,),

                        //Whatsapp
                        Column(
                          children: [
                            InkWell(
                              onTap :()async{
                                Uri url = Uri.parse("https://wa.me/+919548560507?text=Hey!%20Bhanu%20");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print("Failed");
                                }
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/whatsapp_icon.png'),
                                    )
                                ),
                              ),
                            ),
                            Text(
                              "Whatsapp",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12,),

                        //Linkedin
                        Column(
                          children: [
                            InkWell(
                              onTap :()async{
                                Uri url = Uri.parse("https://www.linkedin.com/in/bhanupratap-singh-negi-6b256a215/");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print("Failed");
                                }
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/web/linkedin.png'),
                                    )
                                ),
                              ),
                            ),
                            Text(
                              "LinkedIn",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12,),

                        //LeetCode
                        Column(
                          children: [
                            InkWell(
                              onTap :()async{
                                Uri url = Uri.parse("https://leetcode.com/bhanunegi420/");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print("Failed");
                                }
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/leetcode_icon.png'),
                                    )
                                ),
                              ),
                            ),
                            Text(
                              "LeetCode",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //TaskBar
              BlurryContainer(
                blur: 7,
                width: MediaQuery.of(context).size.width,
                height: 55,
                elevation: 0,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          getWeatherIcon(weatherDescription: description, size: 18),
                          const SizedBox(width: 5,),
                          Column(
                            children: [
                              Text(
                                  "$temp °C",
                                  style:const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                  ),
                              ),
                              Text(
                                  description,
                                  style:const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                  ),
                              ),

                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap:(){
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return Stack(
                                        clipBehavior: Clip.none, alignment: Alignment.bottomCenter,
                                        children:[
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 55.0),
                                            child: BlurryContainer(
                                                blur: 5,
                                                width: MediaQuery.of(context).size.width/3,
                                                height: 450,
                                                elevation: 2,
                                                color: Colors.transparent,
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                                                  child: Column(
                                                    mainAxisAlignment : MainAxisAlignment.spaceAround,
                                                    crossAxisAlignment : CrossAxisAlignment.start,
                                                    children: [

                                                      //Tech Stack
                                                      Text(
                                                        "Tech Stack:",
                                                        style: TextStyle(
                                                          color: Colors.grey.shade300,
                                                          fontFamily: 'JosefinSans',
                                                          fontSize: 15,

                                                        ),
                                                      ),
                                                      Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                height: 40,
                                                                width: 40,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      fit: BoxFit.fitHeight,
                                                                      image: AssetImage('images/skills/C.png'),
                                                                  )
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.cover,
                                                                      image: AssetImage('images/skills/C++.png'),
                                                                    )
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 40,
                                                                width: 40,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.fitHeight,
                                                                      image: AssetImage('images/skills/dart.png'),
                                                                    )
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 40,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.fitWidth,
                                                                      image: AssetImage('images/skills/php.png'),
                                                                    )
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 40,
                                                                width: 40,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.fitHeight,
                                                                      image: AssetImage('images/skills/flutter.png'),
                                                                    )
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 40,
                                                                width: 40,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.fitHeight,
                                                                      image: AssetImage('images/skills/firebase.png'),
                                                                    )
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(height: 5),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                height: 40,
                                                                width: 40,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.fitHeight,
                                                                      image: AssetImage('images/skills/android.png'),
                                                                    )
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50,
                                                                width: 60,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.fitWidth,
                                                                      image: AssetImage('images/skills/mysql.png'),
                                                                    )
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.cover,
                                                                      image: AssetImage('images/skills/postman.png'),
                                                                    )
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Divider(color: Colors.grey.shade300,),

                                                      //Contact Info
                                                      const Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              FaIcon(FontAwesomeIcons.locationPin,color: Colors.white,size: 15,),
                                                              Text(
                                                                "  Haldwani, Uttarakhand",
                                                                style: TextStyle(
                                                                    fontFamily: 'Josefinsans',
                                                                    fontSize: 15,
                                                                    color: Colors.white
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              FaIcon(FontAwesomeIcons.graduationCap,color: Colors.white,size: 15,),
                                                              Text(
                                                                  "  IIIT Ranchi",
                                                                  style: TextStyle(
                                                                    fontFamily: 'Josefinsans',
                                                                    fontSize: 15,
                                                                    color: Colors.white
                                                                  ),
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              FaIcon(FontAwesomeIcons.phone,color: Colors.white,size: 15,),
                                                              Text(
                                                                "  9548560507",
                                                                style: TextStyle(
                                                                    fontFamily: 'Josefinsans',
                                                                    fontSize: 15,
                                                                    color: Colors.white
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Icon(Icons.mail,color: Colors.white,size: 15,),
                                                              Text(
                                                                "  bhanunegi420@gmail.com",
                                                                style: TextStyle(
                                                                    fontFamily: 'Josefinsans',
                                                                    fontSize: 15,
                                                                    color: Colors.white
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(color: Colors.grey.shade300,),

                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 70,
                                                            width: 70,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  fit: BoxFit.cover,
                                                                  image: AssetImage('images/dp.jpg'),
                                                              )
                                                            ),
                                                          ),
                                                          const SizedBox(width: 20,),
                                                          const Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                "Bhanupratap Singh Negi",
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontFamily: 'JosefinSans',
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              Text(
                                                                "App Developer / Software Developer",
                                                                style: TextStyle(
                                                                  color: Colors.grey,
                                                                  fontFamily: 'JosefinSans',
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Divider(color: Colors.grey.shade300,),
                                                      Text(
                                                        "Run this in your Mobile device too.",
                                                        style: TextStyle(
                                                          fontFamily: 'JosefinSans',
                                                          color: Colors.white,
                                                          fontSize: 12
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                            ),
                                          )

                                        ]
                                    );
                                  }
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/web/start.png')
                                )
                              ),

                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            onTap :(){
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return Stack(
                                        clipBehavior: Clip.none, alignment: Alignment.center,
                                        children:[
                                          Container(
                                            height: MediaQuery.of(context).size.height-100,
                                            width: MediaQuery.of(context).size.width-200,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.grey.shade800
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 50,
                                                    padding: const EdgeInsets.all(10.0),
                                                    child:const Text(
                                                      "My Projects",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 30,
                                                          fontFamily: 'JosefinSans',
                                                          decoration: TextDecoration.none
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: MediaQuery.of(context).size.height-180,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.grey.shade900
                                                    ),
                                                    child: ListView.separated(
                                                        itemBuilder: (_,index){
                                                          return projectList[index];
                                                        },
                                                        separatorBuilder:(BuildContext context,int index){
                                                          return Divider(color: Colors.white,);
                                                        } ,
                                                        itemCount: projectList.length
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),

                                        ]
                                    );
                                  }
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('images/web/projects_icon.png')
                                  )
                              ),

                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            onTap: () async {
                              String? encodeQueryParameters(Map<String, String> params) {
                                return params.entries
                                    .map((MapEntry<String, String> e) =>
                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                    .join('&');
                              }
                              final Uri emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'bhanunegi420@gmail.com',
                                query: encodeQueryParameters(<String, String>{
                                  'subject': 'Hey!',
                                }),
                              );

                              launchUrl(emailLaunchUri);
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/web/email.png')
                                  )
                              ),

                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            onTap: () async {
                              launchUrlString('tel:9548560507');
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/web/call.png')
                                  )
                              ),

                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            formattedTime,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            formattedDate,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  List<Widget> projectList = [
    Padding(
      padding: const EdgeInsets.only(top :15.0,left: 10,right: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/project/icon-96.png"),
                      )
                  ),
                ),
                const SizedBox(width: 15,),
                Text(
                  "Mini Trips -\nA Travel Guide",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      decoration: TextDecoration.none
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            HtmlWidget(
              "Achieved a seamless transition from website to mobile app for <a style='text-decoration:none' href = 'https://mini-trips.com'>mini-trips.com</a>, enhancing user travel experiences. Measured by proficiently integrating APIs, designing a user-friendly app, and implementing robust authentication mechanisms. Executed tasks with expertise in Flutter, Dart, Android development, CloudFirestore, and Firebase.",
              textStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'JoseFinSans',
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none
              ),

              onTapUrl: (url) async {
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
                throw 'Could not launch $url';

              },
            )
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top :15.0,left: 10,right: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/project/13.png"),
                      )
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  "Communati -\nA Social Media App",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      decoration: TextDecoration.none
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            HtmlWidget(
              "Achieved the development of a user-centric social media app by utilizing Flutter and Android development skills. Measured by users effortlessly sharing memories, setting personal goals, and connecting with friends for meaningful interactions. Implemented data security with Firebase Authentication and efficient data management via Cloud Firestore, enhancing user engagement and connectivity. This project exemplifies my dedication to crafting mobile apps that prioritize user experience and engagement.",
              textStyle:const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'JoseFinSans',
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none
              ),

              onTapUrl: (url) async {
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
                throw 'Could not launch $url';

              },
            )
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top :15.0,left: 10,right: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/project/budget-tracker.png"),
                      )
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  "Budget Tracker",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      decoration: TextDecoration.none
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            HtmlWidget(
              "Budget Tracker is a budget tracking mobile application for Android. The budget tracker allow users to track their expenses and income, set budgets, and view their spending history.",
              textStyle:const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'JoseFinSans',
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none
              ),

              onTapUrl: (url) async {
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
                throw 'Could not launch $url';

              },
            )
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top :15.0,left: 10,right: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/project/mental_health.png"),
                      )
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  "Mental Health Tracker",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      decoration: TextDecoration.none
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            HtmlWidget(
              "A simple mental health tracker app, that Keeps track of how many people the user have talked to in a day and notifies the user every night. Can keep a TODO List for the user. Gives reminder for Breakfast, Lunch , Dinner and hourly reminder to drink water.and a simple breathing exercise.",
              textStyle:const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'JoseFinSans',
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none
              ),

              onTapUrl: (url) async {
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
                throw 'Could not launch $url';

              },
            )
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top :15.0,left: 10,right: 10,bottom: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/project/weather.png"),
                      )
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  "Weather Forecast",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      decoration: TextDecoration.none
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            HtmlWidget(
              "A Simple Weather Forecast app made through Flutter framework which provides the weather details of the place searched using the OpenWeatherMap API. The app provides data of the weather for the upcoming week.",
              textStyle:const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'JoseFinSans',
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none
              ),

              onTapUrl: (url) async {
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
                throw 'Could not launch $url';

              },
            )
          ],
        ),
      ),
    ),
  ];
}
