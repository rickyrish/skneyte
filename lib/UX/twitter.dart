import 'package:flutter/material.dart';

class TwitterCard extends StatelessWidget {
  const TwitterCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle, size: 60.0, color: Colors.grey,),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "Skneyte", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.white),),
                              TextSpan(text:" " ,style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                              TextSpan(text:" 23/05/2019",style: TextStyle(fontSize: 16.0, color: Colors.grey))
                            ]
                          ),overflow: TextOverflow.ellipsis,
                        )),flex: 5,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Icon(Icons.expand_more, color: Colors.grey,),
                        ),flex: 1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text("aqui va el twitt", style: TextStyle(fontSize: 18.0),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.comment, color: Colors.grey,),
                      Icon(Icons.flare, color: Colors.grey,),
                      Icon(Icons.view_headline, color: Colors.grey,),
                      Icon(Icons.share, color: Colors.grey,),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Divider(),
  ],
);
  }
}