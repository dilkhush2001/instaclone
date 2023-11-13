import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  final picker = ImagePicker();
  File? _imageFile;
  File? _videoFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickVideo(ImageSource source) async {
    final pickedFile = await picker.pickVideo(source: source);

    if (pickedFile != null) {
      setState(() {
        _videoFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        actions: [
          TextButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Post()));
          },child: Text("Post", style: TextStyle(fontSize: 20),))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             (_imageFile != null)? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                  width: 400,
                  child: Image.file(_imageFile!)),
            ):Container(
               margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
               height: 400,
               width: 400,
               color: Colors.black12,
               child: Center(child: Text("𝚜𝚎𝚕𝚎𝚌𝚝 𝚙𝚘𝚜𝚝  𝚙𝚑𝚘𝚝𝚘 𝚘𝚛 𝚅𝚒𝚍𝚎𝚘 𝚏𝚛𝚘𝚖 𝚐𝚊𝚕𝚕𝚊𝚛𝚢"),),
             ),
           Align(
             alignment: Alignment.bottomRight,
               child: Padding(
                 padding: const EdgeInsets.only(right: 20, top: 10),
                 child: TextButton(onPressed: (){
                   _imageFile=null;
                   _videoFile=null;
                   setState(() {
                   });
                 }, child: Text('𝑪𝒂𝒏𝒄𝒆𝒍', style: TextStyle(fontSize: 20),)),
               )),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(onPressed: () => _pickImage(ImageSource.gallery), icon: Icon(Icons.photo)),
                 if (_videoFile != null) Text('Selected Video: ${_videoFile!.path}'),
                 IconButton(onPressed: () => _pickVideo(ImageSource.gallery), icon: Icon(Icons.video_collection)),
                 IconButton(onPressed: () => _pickImage(ImageSource.camera), icon: Icon(Icons.camera_alt_outlined)),
                 IconButton(onPressed: () => _pickVideo(ImageSource.camera), icon: Icon(Icons.video_call)),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
