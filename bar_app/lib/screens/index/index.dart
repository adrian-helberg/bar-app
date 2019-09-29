import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Bar App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: 553.0
            ),
            decoration: BoxDecoration(
              color: Colors.grey
            ),
            child: Image.asset('assets/images/maps.png', fit: BoxFit.cover,),
          ),
          Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                  semanticLabel: 'Test Profile Icon',
                  size: 50.0,
                ),
                Icon(
                  Icons.chat,
                  color: Colors.grey,
                  semanticLabel: 'Test Profile Chat',
                  size: 50.0,
                )
              ],
          ),
          )],
      ),
    );
  }
}