import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:snap_clone/model/other_user.dart';class DiscoverForYouList extends StatelessWidget {  List<OtherUser> otherUData = [    OtherUser(        name: 'DailyBuzz',        imgLink:        'https://i.pinimg.com/originals/64/ce/1d/64ce1de61ff62d1b7a9ed57c82795984.gif'),    OtherUser(        name: 'Dj snake in city',        imgLink:        'https://i3.sndcdn.com/avatars-NRpRmcvr9fGWUX62-rIrcWg-t500x500.jpg'),    OtherUser(        name: 'Life Good',        imgLink: 'https://i.pinimg.com/originals/d0/36/d7/d036d79842bb1773e27691e40b94cb0c.gif'),    OtherUser(        name: 'Learn Flutter',        imgLink:        'https://roszkowski.dev/images/2020-05-04/flutter_logo_leg.gif'),    OtherUser(        name: 'MIcku',        imgLink:        'https://i.pinimg.com/originals/dc/a8/09/dca809071e21db0bac35062a55f678c8.gif'),    OtherUser(        name: 'Skrillex',        imgLink: 'https://giffiles.alphacoders.com/143/14360.gif'),    OtherUser(        name: 'sara',        imgLink:        'https://i.insider.com/5e32f2a324306a19834af322?width=1136&format=jpeg'),    OtherUser(        name: 'Himanshu',        imgLink:        'https://i.insider.com/5e32f2a324306a19834af322?width=1136&format=jpeg'),  ];  @override  Widget build(BuildContext context) {    return Container(        height: MediaQuery.of(context).size.height*.548,        child: GridView.count(            scrollDirection: Axis.vertical,            shrinkWrap: true,            padding: EdgeInsets.only(top: 1, ),            crossAxisCount: 2,            mainAxisSpacing: 10,            //  physics: const NeverScrollableScrollPhysics(),            children: List.generate(otherUData.length, (index) {              return Container(                child: Stack(                  alignment: Alignment.bottomLeft,                  children: [                    Container(                        margin: EdgeInsets.symmetric(vertical: 1,horizontal: 15),                        child: ClipRRect(                          borderRadius: BorderRadius.all(                            Radius.circular(15),                          ),                          child: Image.network('${otherUData[index].imgLink}',fit: BoxFit.fill,height: 600,width: 200,),                        )),                    Container(                      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15 ),                      child: Text(                        '${otherUData[index].name}',                        style:                        TextStyle(shadows: <Shadow>[                          Shadow(                            offset: Offset(0, 0),                            blurRadius: 2.0,                            color: Color.fromARGB(255, 0, 0, 0),                          ),                          Shadow(                            offset: Offset(0, 0),                            blurRadius: 2.0,                            color: Color.fromARGB(125, 0, 0, 255),                          ),                        ],color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),                        maxLines: 2,                        overflow: TextOverflow.ellipsis,                      ),                    )                  ],                ),              );            })));  }}