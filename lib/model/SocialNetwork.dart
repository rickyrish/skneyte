
import 'dart:convert';

import 'package:flutter/services.dart';

class SocialNetwork{
  int id;
  String name;
  String username;
  String image;
  String status;
  String link;
  
  /*SocialNetwork({
    this.id,
    this.username,
    this.image,
    this.status,
    this.link
  });*/

 factory SocialNetwork(Map jsonMap){
    print("jsonMap:");
    print(jsonMap);
    try{
      return SocialNetwork.deserialize(jsonMap);
    }catch(ex){
      throw ex;
    }
    
  }


  SocialNetwork.deserialize(Map<String, dynamic> parsedJson) :
    id = parsedJson["id"].toInt(),
    image = parsedJson["image"].toString(),
    name = parsedJson["name"].toString(),
    username = parsedJson["username"].toString(),
    status = parsedJson["status"].toString(),
    link = parsedJson["link"].toString() ;


}
