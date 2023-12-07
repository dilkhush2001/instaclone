import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import 'Home.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   final List<Widget> tabs=[const Icon(Icons.window_outlined), const Icon(Icons.video_settings), const Icon(Icons.camera_alt)];
   final List<Widget> tabViews = [
     GridView.builder(
       itemCount: list.length, // Number of grid items
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         crossAxisSpacing: 3,
         mainAxisSpacing: 5,
       ),
       itemBuilder: (BuildContext context, int index) {
         return Container(
           height: 200,
           width: 200,
           decoration: BoxDecoration(
             image: DecorationImage(
                 image: AssetImage(list[index].img),
               fit: BoxFit.fill
             )
           ),
           child: Align(
               alignment:Alignment.topRight,
               child: Icon(Icons.video_collection,color: Colors.black,)),

         );
       },
     ),

     GridView.builder(
       itemCount: 8, // Number of grid items
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         crossAxisSpacing: 8,
         mainAxisSpacing: 8,
       ),
       itemBuilder: (BuildContext context, int index) {
         return Container(
           height: 200,
           width: 200,
           decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage(list[index].img),
                   fit: BoxFit.fill
               )
           ),

         );
       },
     ),

     GridView.builder(
       itemCount: 10, // Number of grid items
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         crossAxisSpacing: 8,
         mainAxisSpacing: 8,
       ),
       itemBuilder: (BuildContext context, int index) {
         return Container(
           height: 200,
           width: 200,
           decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage(list[index].img),
                   fit: BoxFit.fill
               )
           ),

         );
       },
     ),
   ];


   List<Widget> settingList=[
     Container(height: 20,
     width: 20,
     color: Colors.cyanAccent,),
     Container(height: 20,
       width: 20,
       color: Colors.cyanAccent,),
     Container(height: 20,
       width: 20,
       color: Colors.cyanAccent,)
   ];
   Future<void> bottomDialog(BuildContext context)async {
     return showModalBottomSheet(context: context, builder: (BuildContext context){
            return Container(
              height: 300,
              child: const Column(children: [
                SizedBox(height: 40,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/girl.png'),
                  ),
                  title: Text('𝐩𝐫𝐨𝐟𝐞𝐬𝐬𝐢𝐨𝐧𝐚𝐥.𝐝𝐢𝐥𝐤𝐡𝐮𝐬𝐡_𝐫𝐚𝐡𝐢'),
                  trailing: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/boy.png'),
                  ),
                  title: Text('✴  🎀  𝒾𝓉`𝓈 𝒻𝒶𝒸𝓀_𝐼𝓃𝓈𝓉𝒶𝐼𝒹  🎀  ✴｡'),
                  trailing:Icon(Icons.circle_outlined)
                ),
                SizedBox(height: 16,),
                ListTile(
                    leading:Icon(Icons.add_circle, size: 60,),
                    title: Text('𝗔𝗱𝗱 𝗮𝗰𝗰𝗼𝘂𝗻𝘁'),
                )
              ],),
            );},
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
      )
      ),
         isScrollControlled: true,
       backgroundColor: Colors.white,
       elevation: 15

     );
   }
   Future<void> menuDialog(BuildContext context)async {
     return showModalBottomSheet(context: context, builder: (BuildContext context){
       return Container(
         height: 720,
         child: Column(
           children: [
             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.settings, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Setting and privacy', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   FaIcon(FontAwesomeIcons.threads, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Threads', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.local_activity, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Your activity', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.more_time, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Archieve', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.qr_code_sharp, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('QR code', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.people_alt, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Supervision', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.payment, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Order and payment', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.verified_sharp, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Meta Verified', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.list_rounded, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Lists', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.star_border_purple500_sharp, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Favorites', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton(onPressed: (){}, child: const Row(
                 children: [
                   Icon(Icons.person_add, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Discover people', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ),
           ],
         ),
       );},
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(12),
               topRight: Radius.circular(12),
             )
         ),
         isScrollControlled: true,
         backgroundColor: Colors.white,
         elevation: 15

     );
   }
   Future<void> addBoxDialog(BuildContext context)async {
     return showModalBottomSheet(context: context, builder: (BuildContext context){
       return Container(
         height: 520,
         child:  Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               SizedBox(height: 30,),
               Align(
                 alignment: Alignment.topCenter,
                 child: Text('Create', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
               ),
               Divider(
                 height: 14,
                 thickness: 0.5,
                 color: Colors.black12,
               ),
               TextButton(onPressed: (){}, child: Row(
                 children: [
                   Icon(Icons.video_settings, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Reel', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
               Divider(
                 height: 14,
                 thickness: 0.5,
                 color: Colors.black12,
               ),
               TextButton(onPressed: (){}, child: Row(
                 children: [
                   Icon(Icons.grid_4x4, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Post', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
               Divider(
                 height: 14,
                 thickness: 0.5,
                 color: Colors.black12,
               ),
               TextButton(onPressed: (){}, child: Row(
                 children: [
                   FaIcon(Icons.manage_history, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Story', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
               Divider(
                 height: 14,
                 thickness: 0.5,
                 color: Colors.black12,
               ),
               TextButton(onPressed: (){}, child: Row(
                 children: [
                   Icon(Icons.favorite, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Story highlight', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
               Divider(
                 height: 14,
                 thickness: 0.5,
                 color: Colors.black12,
               ),
               TextButton(onPressed: (){}, child: Row(
                 children: [
                   FaIcon(Icons.wifi_tethering, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Live', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
               Divider(
                 height: 14,
                 thickness: 0.5,
                 color: Colors.black12,
               ),
               TextButton(onPressed: (){}, child: Row(
                 children: [
                   Icon(Icons.menu_book_sharp, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Guide', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
               Divider(
                 height: 14,
                 thickness: 0.5,
                 color: Colors.black12,
               ),
               TextButton(onPressed: (){}, child: Row(
                 children: [
                   Icon(Icons.trending_up_outlined, color: Colors.black,),
                   SizedBox(width: 16,),
                   Text('Ad', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                 ],
               )),
             ],
           ),
         ),
       );},
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(12),
               topRight: Radius.circular(12),
             )
         ),
         isScrollControlled: true,
         backgroundColor: Colors.white,
         elevation: 15

     );
   }
  @override
  Widget build(BuildContext context) {
    double hi=MediaQuery.of(context).size.height;
    double wi=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    bottomDialog(context);
                  }, child:  Row(
                    children: [
                      Text('𝐩𝐫𝐨𝐟𝐞𝐬𝐬𝐢𝐨𝐧𝐚𝐥.𝐝𝐢𝐥𝐤𝐡𝐮𝐬𝐡_𝐫𝐚𝐡𝐢', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down_outlined, color: Colors.red,),
                    ],
                  )),
                  SizedBox(
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          addBoxDialog(context);
                        }, icon: Icon(Icons.add_box_outlined)),
                        IconButton(onPressed: (){
                          menuDialog(context);
                        }, icon: Icon(Icons.menu)),
                      ],
                    ),
                  )


                ],
              ),
              SizedBox(height: 8,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/img15.jpg',),
                  ),
                  Column(
                    children: [
                      Text('𝟮𝟴', style: TextStyle(fontSize: 19),),
                      Text('𝘗𝘰𝘴𝘵')
                    ],
                  ),
                  Column(
                    children: [
                      Text('𝟳𝟴.𝟵𝟴𝗠',style: TextStyle(fontSize: 16)),
                      Text('Fllowers')
                    ],
                  ),
                  Column(
                    children: [
                      Text('𝟴.𝟵𝟴𝗞', style: TextStyle(fontSize: 16),),
                      Text('Fllowing')
                    ],
                  ),


                ],
              ),
              Text('✷⋆  🎀  𝒟𝒾𝓁𝓀𝒽𝓊𝓈𝒽 𝑅𝒶𝒽𝒾  🎀  ⋆✷',style: TextStyle(fontSize: 20),),
              Text('.•♫•♬• 𝙒𝙚𝙡𝙘𝙤𝙢𝙚 𝙩𝙤 𝙢𝙮 𝙋𝙧𝙤𝙛𝙞𝙡𝙚 •♬•♫•.', style: TextStyle(fontSize: 14),),
              Text('Education', style: TextStyle(color: Colors.black38),),
              Text('Software (AI- Engineer)'),
              Text('Mobile App Developer | WEB Developer |\n Gen AI Developer,'),
              SizedBox(height: 8,),
              Text('💖💘💞 𝕀𝕥`𝕤 𝕟𝕠𝕥 𝕙𝕠𝕨 𝕞𝕦𝕔𝕙 𝕨𝕖 𝕘𝕚𝕧𝕖, 𝕓𝕦𝕥 𝕙𝕠𝕨 𝕞𝕦𝕔𝕙 𝕝𝕠𝕧𝕖 𝕡𝕦𝕥 𝕚𝕟𝕥𝕠 𝕘𝕚𝕧𝕚𝕟𝕘 💞💘💖'),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width:wi/2.2 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12,
                    ),
                    child: TextButton(
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                        },
                      child: Center(child: Text('𝐄𝐝𝐢𝐭 𝐏𝐫𝐨𝐟𝐢𝐥𝐞', style: TextStyle(color: Colors.black),)),
                    )
                    ,

                  ),

                  Container(
                    height: 40,
                    width:wi/2.2 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12,
                    ),
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return  AlertDialog(
                              title: Text('share your profile in  social media'),
                              content:Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                child: Row(
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
                      child: Center(child: Text('𝐒𝐡𝐚𝐫𝐞 𝐏𝐫𝐨𝐟𝐢𝐥𝐞', style: TextStyle(color: Colors.black),)),
                    )
                    ,

                  )

                ],
              ),
              SizedBox(height: 10,),
              DefaultTabController(
                length: tabs.length,
                child: Column(
                  children: [
                    TabBar(
                      tabs: tabs.map((tab) => Tab(icon: tab)).toList(),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.black,
                      indicatorWeight: 2,
                      labelColor: Colors.black,
                    ),
                    Container(
                      height: 400,
                      color: Colors.white,
                      child: TabBarView(
                        children: tabViews,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final picker=ImagePicker();
  File? _imageFile;
  Future<void> _pickImage(ImageSource imageSource)async {
    final pickedFile=await picker.pickImage(source: imageSource);
    if(pickedFile!=null){
      setState(() {
        _imageFile=File(pickedFile.path);
      });
    }
  }
  bool _isSwitch =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  _imageFile==null ?  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black12,
                    backgroundImage:AssetImage('assets/boy.png'),
                    child:  _imageFile!=null? const Text('Add pic', style: TextStyle(color: Colors.black),):null,
                  ) :
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(_imageFile!),
                      ),
                    ),
                  ),

                  SizedBox(width: 16,),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black12,
                    child: FaIcon(FontAwesomeIcons.dolly, color: Colors.black,),
                  ),

                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: ()=>_pickImage(ImageSource.gallery),
                      child: Text("Edit Picture or avatar", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)),),
              SizedBox(height: 10,),
              Text('Name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'update your name'
                ),
              ),
              Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),
              Text('Username', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),

              const TextField(
                decoration: InputDecoration(
                    hintText: 'update your username'
                ),
              ),
              const Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),

              const TextField(
                decoration: InputDecoration(
                    hintText: 'pronouns'
                ),
              ),
              const Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),
              Text('Bio', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Bio'
                ),
              ),
              Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),
              Text('Add Link', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              ListTile(title: Text('Gender'),trailing: Icon(Icons.arrow_forward_ios),),
              Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),
              ListTile(
                title: Text('Threads'),
                trailing: Switch(value: _isSwitch, onChanged: (val){
                  setState(() {
                    _isSwitch=val;
                  });
                }),
              ),
              Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),
              SizedBox(height: 12,),
              Text('Profile information', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Page', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  Row(
                    children: [
                      Text('connect or create'),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),

              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  Row(
                    children: [
                      Text('Education'),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),

              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Contact options', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: Colors.black12,
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Action button', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  Row(
                    children: [
                      Text('None active'),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Profile display', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  Row(
                    children: [
                      Text('Contacts hidden'),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
              Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),
              TextButton(onPressed: (){}, child: Text('Personal information settings', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),)),
              Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),

              TextButton(onPressed: (){}, child: Text('Sign up for Meta Verified', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),)),
              Divider(
                height: 4,
                thickness: 1,
                color: Colors.black12,
              ),
            ],
          ),
        ),

      ),
    );
  }
}



