import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class UserName extends StatefulWidget {
  const UserName({super.key});
  @override
  State<UserName> createState() => _UserNameState();
}
class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    double hi=MediaQuery.of(context).size.height;
    double wi=MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: hi,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent,Colors.redAccent, Colors.cyanAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 220,
                  child: Image.asset('assets/img_1.png', fit: BoxFit.fill,),
                ),
                SizedBox(height: 10,),
                Text('𝚂𝚒𝚐𝚗 𝚞𝚙 𝚝𝚘 𝚜𝚎𝚎 𝚙𝚑𝚘𝚝𝚘 𝚊𝚗𝚍 𝚟𝚒𝚍𝚎𝚘𝚜', style: TextStyle(fontSize: 16),),
                Text('𝚏𝚛𝚘𝚖 𝚢𝚘𝚞𝚛  𝚏𝚛𝚒𝚎𝚗𝚍𝚜', style: TextStyle(fontSize: 16),),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
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
                  },
                  child: Container(
                    width: wi*0.8,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.facebook, size: 30,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text(
                            '𝙇𝙤𝙜 𝙞𝙣 𝙬𝙞𝙩𝙝 𝙁𝙖𝙘𝙚𝙗𝙤𝙤𝙠',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
                    decoration: InputDecoration(
                      hintText: 'Mobile Number or Email Address',
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
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
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
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      hintText: 'Username',
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
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.white70),
                      // ),
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 20),
                  child: Text('𝘗𝘦𝘰𝘱𝘭𝘦 𝘸𝘩𝘰 𝘶𝘴𝘦 𝘰𝘶𝘳 𝘴𝘦𝘳𝘷𝘪𝘤𝘦 𝘮𝘢𝘺 𝘩𝘢𝘷𝘦 𝘶𝘱𝘭𝘰𝘢𝘥𝘦𝘥 𝘺𝘰𝘶𝘳 𝘤𝘰𝘯𝘵𝘢𝘤𝘵 𝘵𝘰 𝘪𝘯𝘧𝘰𝘳𝘮𝘢𝘵𝘪𝘰𝘯 𝘐𝘯𝘴𝘵𝘢𝘨𝘳𝘢𝘮'),
                ),
                Container(
                  height: 20,
                  child: Text('𝐋𝐞𝐚𝐫𝐧 𝐌𝐨𝐫𝐞', style: TextStyle(decoration: TextDecoration.underline),),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('𝘉𝘺 𝘴𝘪𝘨𝘯𝘪𝘯𝘨 𝘶𝘱, 𝘺𝘰𝘶 𝘢𝘨𝘳𝘦𝘦 𝘵𝘰 𝘰𝘶𝘳'),
                    SizedBox(width: 5,),
                    Container(height: 20,child: Text('𝐓𝐞𝐫𝐦 , 𝐏𝐫𝐢𝐯𝐚𝐜𝐲,', style: TextStyle(decoration: TextDecoration.underline)),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("and"),
                    SizedBox(width: 5,),
                    Text("𝐂𝐨𝐨𝐤𝐢𝐞𝐬", style: TextStyle(decoration: TextDecoration.underline),),
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: wi*0.8,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        '𝗦𝗶𝗴𝗻 𝗨𝗽',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('𝙃𝙖𝙫𝙚 𝙖𝙣 𝘼𝙘𝙘𝙤𝙪𝙣𝙩 ?'),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('𝙎𝙞𝙜𝙣 𝙞𝙣.', style: TextStyle(fontSize: 16),))
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
