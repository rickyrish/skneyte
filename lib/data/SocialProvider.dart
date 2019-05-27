
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:skneyte/model/SocialNetwork.dart';

class SocialProvider{


  
  Future<String> _loadSocialAsset() async {
  return await rootBundle.loadString('lib/data/socialNetworks.json');
}

Future<List<SocialNetwork>> fetchSocial() async {
  String jsonString = await _loadSocialAsset();
  final jsonResponse = json.decode(jsonString);
  print("lista");  
  print(jsonResponse['socialNetwoks']);
  return jsonResponse['socialNetwoks'].map<SocialNetwork>((item){
    return SocialNetwork(item);
  } ).toList();
}
}


