import 'package:flutter/material.dart';
import 'package:portfolio/WeatherDetails/convert_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:intl/intl.dart';

class HomepageAndroid{


  Widget HomeScreen(BuildContext context,String description, String temp){
    print(description);
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('kk\nmm').format(now);
    String formattedDate = DateFormat('EEE d MMM').format(now);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/bg.jpg',
                ),
                fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [

                    // Weather Forecast
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(0, 0),
                            blurRadius: 8,
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Text(
                                formattedDate,
                                style:const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'JosefinSans',
                                  fontSize: 20
                                ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                formattedTime,
                                style:const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "JosefinSans",
                                  fontSize: 70
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  getWeatherIcon(
                                      weatherDescription: description,
                                      size: 80
                                  ),
                                  const SizedBox(height: 10,),
                                  Text(
                                    "$temp °C",
                                    style:const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'JosefinSans',
                                      color: Colors.white
                                    ),
                                  ),
                                  const SizedBox(height: 5,),
                                  const Text(
                                    "Haldwani, Uttarakhand",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'JosefinSans',
                                        color: Colors.white
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Social apps
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 40),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Instagram
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap :()async{
                                        Uri url = Uri.parse("https://instagram.com/bhanu_bpsn?utm_source=qr&igshid=MzNlNGNkZWQ4Mg%3D%3D");
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        } else {
                                          print("Failed");
                                        }
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/insta_icon.png'),
                                          )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                        "Instagram",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                        ),
                                    ),
                                  ],
                                ),

                                //Whatsapp
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/whatsapp_icon.png'),
                                            )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Whatsapp",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),

                                //X
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap :()async{
                                        Uri url = Uri.parse("https://twitter.com/Bhanu_bpsn?t=l5P2EAis9UDtneWZB67_Hw&s=09");
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        } else {
                                          print("Failed");
                                        }
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/twitter_icon.png'),
                                            )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "X",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),

                                //LinkedIn
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/linkedin_icon.png'),
                                            )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "LinkedIn",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //GitHub
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        height: 65,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/github_icon.png'),
                                          )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                        "GitHub",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                        ),
                                    ),
                                  ],
                                ),

                                //Resume
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(height: 5,),
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
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/resume_icon.png'),
                                            )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Resume",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),

                                //Projects
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(height: 5,),
                                    InkWell(
                                      onTap :(){
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context){
                                              return Stack(
                                                  clipBehavior: Clip.none, alignment: Alignment.center,
                                                  children:[
                                                    Container(
                                                      height: MediaQuery.of(context).size.height,
                                                      width: MediaQuery.of(context).size.width,
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
                                                              height: MediaQuery.of(context).size.height-120,
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
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/projects_icon.webp'),
                                            )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Projects",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),

                                //LeetCode
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(height: 5,),
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
                                        height: 58,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('images/leetcode_icon.png'),
                                            )
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "LeetCode",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),


                //Bottom Apps

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      //Call
                      InkWell(
                        onTap: () async {
                          launchUrlString('tel:9548560507');
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/call_icon.png'),
                            ),
                          ),
                        ),
                      ),

                      //Email
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
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/gmail_icon.png'),
                            ),
                          ),
                        ),
                      ),

                      //Contacts
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Stack(
                                clipBehavior: Clip.none, alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width-20,
                                    height: 300,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey.shade900
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Center(
                                      child: Container(
                                          height: 280,
                                          width: MediaQuery.of(context).size.width-40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.black
                                          ),
                                          child:Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  FaIcon(FontAwesomeIcons.locationPin,color: Colors.white,size: 18,),
                                                  Text(
                                                    "  Haldwani, Uttarakhand",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      decoration: TextDecoration.none
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  FaIcon(FontAwesomeIcons.graduationCap,color: Colors.white,size: 18,),
                                                  Text(
                                                    "  IIIT Ranchi",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      decoration: TextDecoration.none
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  FaIcon(FontAwesomeIcons.phone,color: Colors.white,size: 18,),
                                                  Text(
                                                    "  9548560507",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      decoration: TextDecoration.none
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.mail_rounded,color: Colors.white,size: 18,),
                                                  Text(
                                                    "  bhanunegi420@gmail.com",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      decoration: TextDecoration.none
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Divider(color: Colors.grey.shade300,),
                                              Column(
                                                children: [
                                                  Text(
                                                    "Tech Stack:",
                                                    style: TextStyle(
                                                      color: Colors.grey.shade300,
                                                      fontFamily: 'JosefinSans',
                                                      fontSize: 15,
                                                      decoration: TextDecoration.none
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
                                                            decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  fit: BoxFit.fitHeight,
                                                                  image: AssetImage('images/skills/C.png'),
                                                                )
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  fit: BoxFit.cover,
                                                                  image: AssetImage('images/skills/C++.png'),
                                                                )
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  fit: BoxFit.fitHeight,
                                                                  image: AssetImage('images/skills/dart.png'),
                                                                )
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 50,
                                                            decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  fit: BoxFit.fitWidth,
                                                                  image: AssetImage('images/skills/php.png'),
                                                                )
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:const BoxDecoration(
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
                                                      ),
                                                      const SizedBox(height: 2),
                                                      const Text(
                                                        "Run this in your Computer too.",
                                                        style: TextStyle(
                                                            fontFamily: 'JosefinSans',
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            decoration: TextDecoration.none
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              )

                                            ],
                                          ),
                                      ),
                                    )
                                  ),
                                  Positioned(
                                      top: 80,
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(80),
                                          image:const DecorationImage(
                                              image: AssetImage('images/dp.jpg'),
                                          ),
                                        ),
                                      )
                                  )
                                ],
                              );
                            },

                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/contact_icon.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
