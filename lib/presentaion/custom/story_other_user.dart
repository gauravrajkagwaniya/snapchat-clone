import 'package:flutter/material.dart';import 'package:snap_clone/model/other_user.dart';class StoryOtherUser extends StatelessWidget {  List<OtherUser> otherUData = [    OtherUser(        name: 'Dikku',        imgLink:            'https://assets.vogue.com/photos/5891fe297caf41c472cb61f7/master/pass/00-hatsune-miku.gif'),    OtherUser(        name: 'Bhawana',        imgLink:            'https://i.pinimg.com/236x/a8/53/72/a8537242060942d962a539f2b0c9f34e.jpg'),    OtherUser(        name: 'Grk',        imgLink:            'https://i.insider.com/5e32f2a324306a19834af322?width=1136&format=jpeg'),    OtherUser(        name: 'YouTube',        imgLink:            'https://i.gifer.com/LZ4n.gif'),    OtherUser(        name: 'MIcku',        imgLink:            'https://64.media.tumblr.com/22268ec2993f984e16698469aab004b3/tumblr_nn74uuV0RV1qfjqf7o1_500.gif'),    OtherUser(        name: 'Skrillex',        imgLink:            'https://giffiles.alphacoders.com/143/14362.gif'),    OtherUser(        name: 'sara',        imgLink:            'https://i.insider.com/5e32f2a324306a19834af322?width=1136&format=jpeg'),    OtherUser(        name: 'Himanshu',        imgLink:            'https://i.insider.com/5e32f2a324306a19834af322?width=1136&format=jpeg'),  ];  @override  Widget build(BuildContext context) {    return Container(      width: MediaQuery.of(context).size.width,      height: MediaQuery.of(context).size.height * .1,      child: ListView.builder(          scrollDirection: Axis.horizontal,          itemCount: otherUData.length,          itemBuilder: (BuildContext context, int index) {            return Container(              width: MediaQuery.of(context).size.width * .25,              child: Column(                children: [                  otherUserStory(context, '${otherUData[index].imgLink}'),                  Flexible(child: Center(                      child: Text(                    '${otherUData[index].name}',                    maxLines: 2,                    overflow: TextOverflow.ellipsis,                  ))),                ],              ),            );          }),    );  }  Widget otherUserStory(BuildContext context, imageLink) => InkWell(      onTap: () {},      child: Container(        child: CircleAvatar(          radius: 34,          backgroundColor: Colors.purple[600],          child: CircleAvatar(            radius: 32,            backgroundColor: Colors.white,            child: CircleAvatar(              radius: 30,              backgroundColor: Colors.grey[200],              backgroundImage: NetworkImage(imageLink),            ),          ),        ),      ));}