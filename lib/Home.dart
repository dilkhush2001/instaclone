import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instaclone/username.dart';
final List list=<Data>[
  Data(color: true, username: '𝕤𝕒𝕜𝕚𝕓 𝕤𝕒𝕪𝕪𝕖𝕕',likeCol: false,bookmark: false, img: 'assets/picture/img_4.png'),
  Data(color: true, username: '𝕤𝕒𝕜𝕚𝕓 𝕤𝕒𝕪𝕪𝕖𝕕',likeCol: false,bookmark: false, img: 'assets/picture/img_1.png'),
  Data(color: true, username: 'i͎t͎s͎_͎r͎o͎h͎a͎n͎',likeCol: false,bookmark: false, img: 'assets/picture/img_2.png'),
  Data(color: true, username: '𝕤𝕙𝕒𝕝𝕦_𝕞𝕚𝕤𝕙𝕣𝕒',likeCol: false,bookmark: false, img: 'assets/picture/img_3.png'),
  Data(color: true, username: '🍓🎀𝒹𝒾𝓁𝓀𝒽𝓊𝓈𝒽_𝓇𝒶𝒽𝒾🎀🍓',likeCol: false,bookmark: false, img: 'assets/picture/img_4.png'),
  Data(color: true, username: '𝐫𝐢𝐭𝐞𝐬𝐡_𝐲𝐚𝐝𝐚𝐯',likeCol: false,bookmark: false, img: 'assets/picture/img_5.png'),
  Data(color: true, username: 'venky1287',likeCol: false,bookmark: false, img: 'assets/picture/img_6.png'),
  Data(color: true, username: 'rohan kumar',likeCol: false,bookmark: false, img: 'assets/picture/img_7.png'),
  Data(color: true, username: 'Its 𝕤𝕒𝕜𝕚𝕓 𝕤𝕒𝕪𝕪𝕖𝕕',likeCol: false,bookmark: false, img: 'assets/picture/img_8.png'),
  Data(color: true, username: 'Adarsh Anand',likeCol: false,bookmark: false, img: 'assets/picture/img_9.png'),
  Data(color: true, username: 'its_suman',likeCol: false,bookmark: false, img: 'assets/picture/img_10.png'),
  Data(color: true, username: 'its piyush',likeCol: false,bookmark: false, img: 'assets/picture/img_11.png'),
  Data(color: true, username: 'rohan kumar',likeCol: false,bookmark: false, img: 'assets/picture/img_12.png'),
  Data(color: true, username: 'Its 𝕤𝕒𝕜𝕚𝕓 𝕤𝕒𝕪𝕪𝕖𝕕',likeCol: false,bookmark: false, img: 'assets/picture/img_13.png'),
  Data(color: true, username: 'dilkhush_rahi',likeCol: false,bookmark: false, img: 'assets/picture/img_14.png'),

  Data(color: true, username: '𝕤𝕒𝕜𝕚𝕓_𝕤𝕒𝕪𝕪𝕖𝕕',likeCol: false,bookmark: false, img: 'assets/picture/img_15.png'),
  Data(color: true, username: '𝓇𝒾𝓉𝑒𝓈𝒽_𝒿𝒽𝒶❁',likeCol: false,bookmark: false, img: 'assets/picture/img_16.png'),
  Data(color: true, username: 'dilkhus',likeCol: false,bookmark: false, img: 'assets/picture/img_17.png'),
  Data(color: true, username: '𝒹𝒾𝓁𝓀𝒽𝓊𝓈𝒽_𝓇𝒶𝒽',likeCol: false,bookmark: false, img: 'assets/picture/img_18.png'),
  Data(color: true, username: 'its_rohan',likeCol: false,bookmark: false, img: 'assets/picture/img_19.png'),


];
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  List<Widget> Droplist = [
    Container(
      width: 140,
      child: ListTile(leading: Text('𝗙𝗼𝗹𝗹𝗼𝘄𝗶𝗻𝗴',), trailing: Icon(Icons.people_alt, color: Colors.black,)),
    ),
    Container(
      width: 140,
      child: ListTile(leading: Text('𝗙𝗮𝘃𝗼𝘂𝗿𝗶𝘁𝗲𝘀'), trailing: Icon(Icons.star, color: Colors.black,)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Container story(){
      return Container(
        height: 100,
        width: 80,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: AssetImage('assets/boy.png',),
                        fit: BoxFit.fill
                      )
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 50,
                    right: 0,
                    child: Container(
                      //backgroundColor: Colors.blueAccent,
                        height: 35,
                        width: 35,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.add_circle,color: Colors.blue,size: 35,),)
                    ))
              ],
            ),
            Text('Your Story'),
          ],
        ),
      );
    }

    // Center center(int i){
    //   return Center(
    //     child: Container(
    //       height: 76,
    //       width: 76,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(38),
    //           image: DecorationImage(
    //               image: NetworkImage(list[i].img),
    //               fit: BoxFit.fill
    //           )
    //       ),
    //     ),
    //   );
    // }

    Container container(){
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: DropdownButton<Widget>(
                    hint: Image.asset('assets/img_1.png'),
                    items: Droplist.map((widget) {
                      return DropdownMenuItem<Widget>(
                        value: widget,
                        child: widget,
                      );
                    }).toList(),
                    onChanged: (selectedWidget) {
                    },
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_rounded, color: Colors.black,size: 30,)),
                      IconButton(onPressed: (){},icon: FaIcon(FontAwesomeIcons.facebookMessenger, size: 25,)),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),

              ],
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (itemBuilder, idx){
                    if(idx==0)return story();
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          list[idx].color=false;
                        });
                          showDialog(
                            context: context,
                            builder: (context) {
                              return  AlertDialog(
                                backgroundColor: Colors.transparent,
                                content:Container(
                                  height: 300,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage(list[idx].img), fit: BoxFit.fill)
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      child: Padding(
                        padding:  EdgeInsets.only(left: 12),
                        child: Column(
                          children:<Widget>[
                          Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(shape: BoxShape.circle, gradient: list[idx].color ?  LinearGradient(colors: [
                            Colors.red,Colors.yellow, Colors.pinkAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight
                          ) : null,
                            border: Border.all(
                              color: list[idx].color ? Colors.transparent : Colors.black26,
                              width: 5.0,),),
                        child: Center(
                                child: Container(
                                  height: 76,
                                  width: 76,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(38),
                                      image: DecorationImage(
                                          image: AssetImage(list[idx].img),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Text(list[idx].username)
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      );
    }
    CircleAvatar logousercenter(int i){
      return CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(list[i].img),
      );
    }
    Container logouser(int i){
      return Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: list[i].color?Color(0xFFFF0000):Colors.black26,
            width: 3.0,
          ),
        ),
        child: logousercenter(i),
      );
    }

    void bookmark(int i) {
        setState(() {
          list[i].bookmark=!list[i].bookmark;
        });
    }
    Column columnList(int i){
      return Column(
        children: [
          ListTile(
            leading: logouser(i),
            title: Text(list[i].username),
            trailing: Icon(Icons.more_vert, color: Colors.black,),
          ),
          GestureDetector(
            onDoubleTap: (){
              setState(() {
                list[i].likeCol=!list[i].likeCol;
              });
            },
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(list[i].img),
                  fit: BoxFit.fill
                )
              ),
             // child: Image.network(),
            ),
          ),
          Container(height: 35,width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                        list[i].likeCol=!list[i].likeCol;
                      });},
                        child: list[i].likeCol?Image.asset('assets/img_12.png',):Image.asset('assets/img_6.png'),),
                    //IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, size: 35,)),
                    const SizedBox(width: 8,),
                    Image.asset('assets/img_5.png', color: Colors.black,),
                    const SizedBox(width: 8,),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return  AlertDialog(
                              title: const Text('share this reel to your friends'),
                              content:Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    FaIcon(Icons.facebook, size: 40,),
                                    FaIcon(FontAwesomeIcons.linkedin, size: 40,),
                                    FaIcon(FontAwesomeIcons.twitter, size: 40,),
                                    FaIcon(FontAwesomeIcons.whatsapp, size: 40,)
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                        child: Image.asset('assets/img_7.png', color: Colors.black,))
                  ],
                ),),
                //Image.asset('assets/img_8.png'),
                GestureDetector(
                    onTap: (){bookmark(i);},
                    child: !list[i].bookmark ?Icon(Icons.bookmark_border, size: 35,):Icon(Icons.bookmark_outlined, size: 35,color: Colors.black54,))
              ],
            ),),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 3),
            child: Align(
              alignment: Alignment.topLeft,
                child: Text("895867 l͏i͏k͏e͏s͏", style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(radius: 10,
                  backgroundImage: AssetImage('assets/girl.png'),
                ),
                SizedBox(width: 3,),
                Text("liked by adarsh_anand9525   and 495894o  others")
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("View all 142 comments....",)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("6 𝘩𝘰𝘶𝘳𝘴 𝘢𝘨𝘰",)),
          ),
        ],
      );
    }
    return Scaffold(
      body:ListView.builder(
        itemCount: list.length,
          itemBuilder: (itemBuilder ,idx){
          if(idx==0)return Container(
            height: 160,
            width: double.infinity,
            child: container()
          );
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: columnList(idx)
        );
      })
    );

  }


}

class Data{
  bool color;
  String username;
  bool likeCol;
  bool bookmark;
  String img;
  Data({
    required this.color,
    required this.username,
    required this.likeCol,
    required this.bookmark,
    required this.img});
}