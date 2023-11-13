import 'package:flutter/material.dart';
import 'package:instaclone/Home.dart';
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: GestureDetector(
              onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));},
              child: Container(height: 46,
                alignment: Alignment.centerLeft,
                width: double.infinity,
               // color: Colors.cyanAccent,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Icon(Icons.search),SizedBox(width: 8,),
                      Text('Search .....'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: GridView.builder(
                itemCount: list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16
          ),
                  itemBuilder: (itemBuilder, idx){
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(list[idx].img),
                      fit: BoxFit.fill
                    )
                  ),
                );

          }))
        ],
      )
    );
  }
}
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12
                ),
                child: const TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'Search..',
                      contentPadding: EdgeInsets.only(left: 8, top: 12)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Text("𝐫𝐞𝐜𝐞𝐧𝐭𝐥𝐲 𝐬𝐞𝐚𝐫𝐜𝐡𝐞𝐝 𝐮𝐬𝐞𝐫𝐧𝐚𝐦𝐞.....")),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(radius: 7,),
                Text("ɨȶֆ_ʀօɦǟռ"),
                Text(' 🎀  𝒾𝓉𝓈_𝓇❀𝒽𝒶𝓃  🎀 ', style: TextStyle(fontSize: 20),),
              ],),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('𝙞𝙩𝙨_𝙎𝙝𝙖𝙡𝙪_ 𝙈𝙞𝙨𝙝𝙧𝙖',style: TextStyle(fontSize: 20)),
                  Text('𝒾𝓉𝓈_𝓈𝒶𝓀𝒾𝒷 ', style: TextStyle(fontSize: 24),)
                ],
              ),
            ),
            Text('🎀  𝒮𝒽𝒶𝓁𝓊_ 𝑀𝒾𝓈𝒽𝓇𝒶  🎀  ', style: TextStyle(fontSize: 24),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(radius: 10,),
                  SizedBox(width: 12,),
                  Text('L♥a♥x♥m♥i♥_♥ ♥S♥h♥a♥r♥m♥a')
                ],
              ),
            )
          ],
        ),
    );
  }
}
