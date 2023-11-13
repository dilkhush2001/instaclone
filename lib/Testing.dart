// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video PageView Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   PageController _pageController = PageController();
//   List<String> videoUrls = [
//     'https://cdn.pixabay.com/vimeo/438212573/child-44224.mp4?width=640&hash=103eaa70d4487121492a562407c830a80c7a8fdc',
//     'https://cdn.pixabay.com/vimeo/329952760/doctor-22704.mp4?width=1280&hash=248b1ecf0df6257fe8129a5c8665c05bcf0c10da',
//     'https://cdn.pixabay.com/vimeo/177682161/cardiology-4169.mp4?width=640&hash=aec9062a033f7c5f75daba3b00bd596cd8e76c2f',
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video PageView Example'),
//       ),
//       body: PageView.builder(
//         controller: _pageController,
//         itemCount: videoUrls.length,
//         itemBuilder: (context, index) {
//           return VideoPlayerPage(videoUrl: videoUrls[index]);
//         },
//       ),
//     );
//   }
// }
//
// class VideoPlayerPage extends StatefulWidget {
//   final String videoUrl;
//
//   const VideoPlayerPage({required this.videoUrl}) : super();
//
//   @override
//   _VideoPlayerPageState createState() => _VideoPlayerPageState();
// }
//
// class _VideoPlayerPageState extends State<VideoPlayerPage> {
//   late VideoPlayerController _controller;
//   late ChewieController _chewieController;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(widget.videoUrl)
//       ..initialize().then((_) {
//         setState(() {});
//       });
//
//     _chewieController = ChewieController(
//       videoPlayerController: _controller,
//       aspectRatio: 16 / 9,
//       autoPlay: true,
//       looping: true,
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: _controller.value.isInitialized
//           ? Chewie(
//         controller: _chewieController,
//       )
//           : CircularProgressIndicator(),
//     );
//   }
// }
