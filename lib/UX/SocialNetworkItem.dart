import 'package:flutter/material.dart';
import 'package:skneyte/model/SocialNetwork.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialNetworkItem extends StatelessWidget {
  final SocialNetwork socialNetwork;
  SocialNetworkItem(this.socialNetwork);

  @override
  Widget build(BuildContext context) {
     return 
     GestureDetector(
      onTap: _launchURL
     ,child: 
     Card(child: Column(children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
                Image.asset(
          socialNetwork.image,
          fit: BoxFit.cover,
          height: 200.0,
          width: double.infinity,
        ),
            Positioned(left: 0.0,
            bottom: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration( color: Colors.grey[900].withOpacity(0.5)),
              constraints: BoxConstraints.expand(height: 55.0),
            ),
            ),
            Positioned(left: 10.0,
            bottom: 10.0,
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(child: 
              Text(socialNetwork.name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),)),
              Container(
                width: 250.0,
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(socialNetwork.username,
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                ),
                )
            ],)
            ,),
            Positioned(
              right: 5.0,
              bottom: 10.0,
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Text(socialNetwork.status),
                  Container(width: 4.0,),
                  Icon(Icons.brightness_1,color: Colors.white,size: 16.0, )

                ],),
                Container(height: 4.0,),
                
              ],),
            )
            ],
          ) 
          
        )
        
      ],),
    )
     ,);
  }

  _launchURL() async {
  var url = socialNetwork.link;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}