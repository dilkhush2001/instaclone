import 'package:flutter/material.dart';
import 'package:instaclone/Post.dart';
import 'package:video_player/video_player.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});
  @override
  State<Reels> createState() => _ReelsState();
}
class _ReelsState extends State<Reels> {
  late PageController _pageController;
  late List<VideoData> videoUrls;
  late List<VideoPlayerController> _controllers;
  late int _currentPageIndex;

  @override
  void initState() {
    super.initState();
    videoUrls =<VideoData> [
    VideoData(follow: false,like: false, username: '💖💞@𝐝𝐢𝐥𝐤𝐡𝐮𝐬𝐡_𝐫𝐚𝐡𝐢', likeCol: false, videoLink: 'https://player.vimeo.com/external/608079239.sd.mp4?s=0449132bf7fc41e60b331c634dd2aab8030023d1&profile_id=165&oauth2_token_id=57447761', img: 'assets/picture/img_1.png'),
      VideoData(follow: false, like: false, username: '@its_Soni90', likeCol: false, videoLink: 'https://player.vimeo.com/progressive_redirect/playback/739240962/rendition/720p/file.mp4?loc=external&oauth2_token_id=57447761&signature=9362923272979198c62da85d404c9e12304dc808877df217fcc9632e21716562', img: 'assets/picture/img_17.png'),
    VideoData(follow: false,like: false, username: 'its rohan__', likeCol: false, videoLink: 'https://player.vimeo.com/external/581366211.sd.mp4?s=bac7fb56f0ad05392ef59717ab659072dd8ee251&profile_id=165&oauth2_token_id=57447761', img: 'assets/picture/img_2.png'),
    VideoData(follow: false,like: false, username: 'its Aman', likeCol: false, videoLink: 'https://player.vimeo.com/external/542424222.sd.mp4?s=4ae474ea25fd9a7f078ad631aff1caa00f38881c&profile_id=165&oauth2_token_id=57447761', img: 'assets/picture/img_3.png'),
    VideoData(follow: false,like: false, username: '💖💞@laxmiii_𝐫𝐚𝐡𝐢', likeCol: false, videoLink: 'https://player.vimeo.com/external/542421762.sd.mp4?s=fb878ed406d074ed0b61f9762a0cb75e9f4d492e&profile_id=165&oauth2_token_id=57447761', img: 'assets/picture/img_2.png'),
    VideoData(follow: false, like: false,username: 'its shalu', likeCol: false, videoLink: 'https://player.vimeo.com/external/205660385.sd.mp4?s=ed3fad435c7d371ef45dc1b3c1ac99fcf94fa00e&profile_id=164&oauth2_token_id=57447761', img: 'assets/picture/img_4.png'),
    VideoData(follow: false, like: false,username: 'dilkhush.rahi', likeCol: false, videoLink: 'https://player.vimeo.com/external/542421515.sd.mp4?s=e21e3d43a7719133d19353581137d78adea922c7&profile_id=164&oauth2_token_id=57447761', img: 'assets/picture/img_5.png'),
    VideoData(follow: false, like: false,username: '💖💞@𝐝𝐢𝐥𝐤𝐡𝐮𝐬𝐡_𝐫𝐚𝐡𝐢', likeCol: false, videoLink: 'https://player.vimeo.com/external/436375775.sd.mp4?s=17eeaad1489dd587e1244ee60e4c87c798118bd5&profile_id=164&oauth2_token_id=57447761', img: 'assets/picture/img_6.png'),
    VideoData(follow: false, like: false,username: 'dilkhush.rahi', likeCol: false, videoLink: 'https://player.vimeo.com/external/542372392.sd.mp4?s=a14befa899b9fee9f9ef1684dc39beacf8162a62&profile_id=165&oauth2_token_id=57447761', img: 'assets/picture/img_8.png'),
    VideoData(follow: false, like: false,username: 'its payal', likeCol: false, videoLink: 'https://player.vimeo.com/external/372311827.sd.mp4?s=7b58adfb4a8609401a1466e3b33946f8b49ae705&profile_id=164&oauth2_token_id=57447761', img: 'assets/picture/img_10.png'),
    VideoData(follow: false, like: false,username: '💖💞@𝐝𝐢𝐥𝐤𝐡𝐮𝐬𝐡_𝐫𝐚𝐡𝐢', likeCol: false, videoLink: 'https://player.vimeo.com/progressive_redirect/playback/719392416/rendition/540p/file.mp4?loc=external&oauth2_token_id=57447761&signature=0eeef757db873dae0cc0a81b865c762afc9cde79359b6241646b0fee44f4f5cd', img: 'assets/picture/img_11.png'),
    ];

    _pageController = PageController();
    _currentPageIndex = 0;

    _controllers = videoUrls.map((url) {
      final controller = VideoPlayerController.network(url.videoLink)
        ..initialize().then((_) {
          setState(() {});
        });
      return controller;
    }).toList();

    _controllers[_currentPageIndex].play();
    _pageController.addListener(() {
      final pageIndex = _pageController.page?.round() ?? 0;
      if (pageIndex != _currentPageIndex) {
        _controllers[_currentPageIndex].pause();
        _currentPageIndex = pageIndex;
        _controllers[_currentPageIndex].play();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
              scrollDirection: Axis.vertical,
              itemCount: videoUrls.length,
              itemBuilder: (itemBuilder, idx){
                return Container(
                  alignment: Alignment.centerRight,
                  color: Colors.blueGrey,
                  child: Stack(
                    children: [
                      Container(
                          child:Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                _buildVideoPlayer(idx),
                              ],
                            ),
                          )

                      ),
                      Positioned(
                          left: 12,
                          bottom: 20,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundImage: AssetImage(videoUrls[idx].img),
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(videoUrls[idx].username,style: TextStyle(fontSize: 16, color: Colors.white),),
                                  SizedBox(width: 12,),
                                  Container(
                                    height: 36,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: TextButton(onPressed: (){
                                      setState(() {
                                        videoUrls[idx].follow=!videoUrls[idx].follow;
                                      });
                                    },
                                        child: Text(videoUrls[idx].follow ?"Following":'Follow', style: TextStyle(color: Colors.white),)),
                                  )
                                ],
                              ),
                              SizedBox(height: 12,),
                              Text('निचले स्तर के दुखद हिंदी गाने', style: TextStyle(color: Colors.white),),
                              SizedBox(height: 14,),
                              Row(
                                children: [
                                  Icon(Icons.library_music,),SizedBox(width: 8,),
                                  Text('music name with marque tag',style: TextStyle(color: Colors.white),)
                                ],)

                            ],
                          )),

                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12,),
                              child: IconButton(onPressed: (){
                                videoUrls[idx].like=!videoUrls[idx].like;
                                setState(() {

                                });
                              },
                                  icon: Icon(videoUrls[idx].like ?Icons.favorite_border:Icons.favorite, size: 40,color: videoUrls[idx].like? Colors.white:Colors.red,)),
                            ),
                            SizedBox(height: 16,),
                            Text('98.8K', style: TextStyle(color: Colors.white),),
                            SizedBox(height: 16,),
                            GestureDetector(
                                onTap: (){},
                                child: Image.asset("assets/img_9.png", height: 40,width: 40,color: Colors.white,)),
                            SizedBox(height: 16,),
                            Text('56876', style: TextStyle(color: Colors.white),),
                            SizedBox(height: 16,),
                            GestureDetector(
                                onTap: (){},
                                child: Image.asset("assets/img_7.png", height: 30,width: 30,color: Colors.white,)),
                            SizedBox(height: 16,),
                            Text('92.7M', style: TextStyle(color: Colors.white),),
                            SizedBox(height: 12,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white,)),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)
                                ,image: DecorationImage(
                                  image: AssetImage('assets/img_11.png'),
                                  fit: BoxFit.fill
                              ),
                              ),
                            ),
                            SizedBox(height: 8,)
                          ],
                        ),
                      )
                    ],
                  ),
                );}),
          Positioned(
              top: 50,
              right: 8,
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Post()));
              },icon: Icon(Icons.camera_alt_outlined, color: Colors.white,size: 35,),)),

        ],
      )
    );


  }
  Widget _buildVideoPlayer(int index) {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: _controllers[index].value.isInitialized ? VideoPlayer(_controllers[index]) : Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void dispose() {
    super.dispose();
    for (final controller in _controllers) {
      controller.dispose();
    }
    _pageController.dispose();
  }
}

class VideoData{
  bool follow;
  bool like;
  String username;
  bool likeCol;
  String videoLink;
  String img;
  VideoData({
    required this.follow,
    required this.like,
    required this.username,
    required this.likeCol,
    required this.videoLink,
    required this.img});
}
