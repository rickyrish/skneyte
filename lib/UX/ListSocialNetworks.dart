import 'package:flutter/material.dart';
import 'package:skneyte/UX/SocialNetworkItem.dart';
import 'package:skneyte/data/SocialProvider.dart';
import 'package:skneyte/model/SocialNetwork.dart';


class ListSocialNetworks extends StatefulWidget {
  final SocialProvider provider;

  ListSocialNetworks(this.provider);

  _ListSocialNetworksState createState() => _ListSocialNetworksState();
}

class _ListSocialNetworksState extends State<ListSocialNetworks> {
  List<SocialNetwork> _socialNetwork = List();

  @override
  void initState() {
    loadsocials();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int cantidad =  _socialNetwork.length;
    print(_socialNetwork[0].image);
    print("cantidad: $cantidad");
    return Container(
       child: ListView.builder(
         itemCount: _socialNetwork.length,
         itemBuilder: (BuildContext context, int index){
           print(_socialNetwork[index].name);
           return SocialNetworkItem(_socialNetwork[index]);
         },
       ),
    );
  }

  loadsocials() async{
    var social = await widget.provider.fetchSocial();
    print(social);
    setState(() {
     _socialNetwork.addAll(social); 
    });
  }
}