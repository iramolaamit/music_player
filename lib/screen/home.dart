import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/music_detail_page.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mainHeight = MediaQuery.of(context).size.height;
    final mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(icon: Icon(Icons.grid_view_outlined), onPressed: null),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      bottomNavigationBar: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: null, icon: Icon(Icons.home_outlined)),
            IconButton(onPressed: null, icon: Icon(Icons.search)),
            IconButton(
                onPressed: null, icon: Icon(Icons.my_library_add_rounded))
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            FirstLine(),
            HorizontalList(),
            Row(
              children: [
                Text('Latest Songs'),
              ],
            ),
            VerticalList(),
            BottonPlayer(),
          ],
        ),
      ),
    );
  }
}

class FirstLine extends StatelessWidget {
  const FirstLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: null, child: Text('Featured Albums')),
        TextButton(onPressed: null, child: Text('View More')),
      ],
    );
  }
}

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

          Container(
            // color: Colors.red,
            width: 300,
            height: 80,
            child: ListTile(
              leading: Image.network(
                  'https://media.istockphoto.com/photos/sunset-waterfall-picture-id483822568'),
              title: Text('Music'),
              subtitle: Text('Author or Singer'),
              trailing: IconButton(
                  icon: Icon(CupertinoIcons.suit_heart), onPressed: null),
            ),
          ),
          Container(
            // color: Colors.red,
            width: 300,
            height: 80,
            child: ListTile(
              leading: Image.network(
                  'https://media.istockphoto.com/photos/sunset-waterfall-picture-id483822568'),
              title: Text('Music'),
              subtitle: Text('Author or Singer'),
              trailing: IconButton(
                  icon: Icon(CupertinoIcons.suit_heart), onPressed: null),
            ),
          ),
          Container(
            // color: Colors.red,
            width: 300,
            height: 80,
            child: ListTile(
              leading: Image.network(
                  'https://media.istockphoto.com/photos/sunset-waterfall-picture-id483822568'),
              title: Text('Music'),
              subtitle: Text('Author or Singer'),
              trailing: IconButton(
                  icon: Icon(CupertinoIcons.suit_heart), onPressed: null),
            ),
          ),
          Container(
            // color: Colors.red,
            width: 300,
            height: 80,
            child: ListTile(
              leading: Image.network(
                  'https://media.istockphoto.com/photos/sunset-waterfall-picture-id483822568'),
              title: Text('Music'),
              subtitle: Text('Author or Singer'),
              trailing: IconButton(
                  icon: Icon(CupertinoIcons.suit_heart), onPressed: null),
            ),
          ),
        ],
      ),
    );
  }
}

class VerticalList extends StatelessWidget {
  VerticalList({Key? key}) : super(key: key);
final _audioQuery =OnAudioQuery();
  @override
  Widget build(BuildContext context) {
    final mainHeight = MediaQuery.of(context).size.height;
    final mainWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: mainHeight * .53,
      child: FutureBuilder<List<SongModel>>(
        future: _audioQuery.querySongs(
          ignoreCase: true,
          orderType: OrderType.ASC_OR_SMALLER,
          uriType: UriType.EXTERNAL,sortType: null,

        ),

        builder: (context, item) {
          if(item.data==null){
            return Center(child: CircularProgressIndicator(),);
          }
          if(item.data!.isEmpty){
            return Center(child: Text('No Songs is available'));

          }
         return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount:item.data!.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(CupertinoIcons.music_note_2),
            trailing: IconButton(
                onPressed: null, icon: Icon(CupertinoIcons.suit_heart)),
            title: Text(item.data![index].displayName),
            subtitle: Text("${item.data![index].artist}"),
          ),
        );}
      ),
    );
  }
}

class BottonPlayer extends StatelessWidget {
  const BottonPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Extra(),
                ));
          },
          child: Container(
            color: Colors.blueGrey,
            child: ListTile(
              leading: Image.network(
                  'https://media.istockphoto.com/photos/sunset-waterfall-picture-id483822568'),
              trailing: IconButton(
                  onPressed: () {
                    if(Icon==CupertinoIcons.suit_heart){
                      Icon(CupertinoIcons.heart_fill);
                    }else{
                      Icon(CupertinoIcons.suit_heart);
                    }
                  }, icon: Icon(CupertinoIcons.suit_heart)),
              title: Text('Music name'),
              subtitle: Text('Singer'),
            ),
          ),
        ),
      ],
    );
  }
}
