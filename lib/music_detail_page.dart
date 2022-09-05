import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Extra extends StatelessWidget {
  const Extra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainHight = MediaQuery.of(context).size.height;
    final mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_downward_outlined),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Song Name'),
        centerTitle: true,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // decoration: BoxDecoration(borderRadius:BorderRadius.circular(12)),
            width: double.infinity,
            height: 400,
            color: Colors.blueGrey,
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.zero,
            child: SizedBox.square(
              dimension: 25,
              child: Image.network(
                'https://media.istockphoto.com/photos/sunset-waterfall-picture-id483822568',
                alignment: Alignment.topCenter,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.block_flipped)),
              Text('SongName'),
              IconButton(
                  onPressed: null, icon: Icon(CupertinoIcons.suit_heart)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: null, icon: Icon(CupertinoIcons.shuffle)),
              IconButton(
                  onPressed: null,
                  icon: Icon(CupertinoIcons.backward_end_fill)),
              IconButton(
                  onPressed: null, icon: Icon(CupertinoIcons.play_arrow_solid)),
              IconButton(
                  onPressed: null, icon: Icon(CupertinoIcons.forward_end_fill)),
              IconButton(onPressed: null, icon: Icon(CupertinoIcons.repeat)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('0.00'),
              Container(
                  width: 200,
                  height: 2,
                  child: LinearProgressIndicator(
                    value: .56,
                  )),
              Text('5.00')
            ],
          ),
        ],
      ),
    );
  }
}
