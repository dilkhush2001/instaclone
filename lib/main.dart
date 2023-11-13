import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/Home.dart';
import 'package:instaclone/Post.dart';
import 'package:instaclone/Reels.dart';
import 'package:instaclone/Search.dart';
import 'package:instaclone/username.dart';

import 'MainHome.dart';
import 'Profile.dart';
import 'Testing.dart';
void main(){
  return runApp(App());
}
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
List<String> country=['English', 'Hindi','Dansk', 'Urdu', 'Bhojpuri', 'Maithly', 'Telgu', 'Banagla', 'panjabi', 'Arabic'];
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
bool visiblePass=false;
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double hi=MediaQuery.of(context).size.height;
    double wi=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: hi,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo, Colors.indigoAccent,Colors.pink, Colors.pinkAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: hi*0.06,),
                Container(
                  height: 180,
                  width: 200,
                  child: Image.asset('assets/dilkhush.png'),
                ),
                FaIcon(FontAwesomeIcons.instagram, size: 100,color: Colors.red,),
                Container(
                  height: 60,
                  width: 220,
                  child: Image.asset('assets/img_1.png', fit: BoxFit.fill,),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // color: Color(0x10000000),
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width:wi*0.8 ,
                  child: TextFormField(
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      hintText: 'Phone number, email address, or username',
                      border: InputBorder.none,
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.white70),
                      // ),
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // color: Color(0x10000000),
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width:wi*0.8 ,
                  child: TextFormField(
                    obscuringCharacter: '*',
                    autocorrect: true,
                    obscureText: visiblePass,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(fontSize: 14),
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          visiblePass=!visiblePass;
                        });
                      }, icon: visiblePass ?Icon(Icons.visibility_off_outlined):Icon(Icons.visibility_outlined)),
                      hintText: 'Password',
                      contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                      border: InputBorder.none,

                    ),

                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHome()));
                  },
                  child: Container(
                    width: wi*0.8,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                        height: 20,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                    Text("OR"),
                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                        height: 20,
                        indent: 10,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.facebook, size: 40,color: Colors.cyan,),
                    TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return  AlertDialog(
                                title: const Text('Facebook Authentication'),
                                content:Container(
                                  height: 40,
                                  width: 80,
                                  alignment: Alignment.center,
                                  child: Text("Waiting for Facebook API"),
                                ),
                              );
                            },
                          );
                        },child: Text('𝙇𝙤𝙜 𝙞𝙣 𝙬𝙞𝙩𝙝 𝙁𝙖𝙘𝙚𝙗𝙤𝙤𝙠', style: TextStyle( fontSize: 16, color: Colors.black),),),
                  ],
                ),
                TextButton(onPressed: (){}, child: Text("Forget password?", style: TextStyle(color: Colors.yellowAccent))),
                SizedBox(height: 10,),
                Expanded(child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('𝘿𝙤𝙣`𝙩 𝙝𝙖𝙫𝙚 𝙖𝙣 𝙖𝙘𝙘𝙤𝙪𝙣𝙩?'),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserName()));
                      }, child: Text('Sign up.'))
                    ],
                  ),
                )),
                SizedBox(height: 40,)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
