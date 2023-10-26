import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images in Flutter'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              margin: EdgeInsets.all(8),
              elevation: 10,
              child: Image.network(
                'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
              ),
            ),
            CachedNetworkImage(
              errorWidget: (context, url, error) => Icon(
                Icons.error,
                size: 100,
                color: Colors.red,
              ),
              placeholder: (context, url) {
                return Image(
                  image: AssetImage('assets/images/placeholder.png'),
                );
              },
              imageUrl:
                  'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
            ),
            Image.network(
              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            Image.asset('assets/images/profile.jpg'),
            Image(
              image: AssetImage('assets/images/profile.jpg'),
            ),
          ],
        ),
      ),
    ),
  );
}
