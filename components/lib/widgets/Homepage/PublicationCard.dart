// ignore_for_file: file_names

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

class PublicationCard extends StatelessWidget {
  final String photoProfil;
  final String username;
  final String promotion;
  final String datePublication;
  final String Description;
  final String? image;
  final int likes;
  final int commentaires;

  const PublicationCard({
    required this.photoProfil,
    required this.username,
    required this.datePublication,
    required this.Description,
    this.image,
    required this.likes,
    required this.commentaires,
    required this.promotion,
  });

  @override
  Widget build(BuildContext context) {
    bool click = false;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    void _changeClick(){
      click = true;
    }
    return Container(
      color: Colors.blue,
      width: screenWidth * 0.8,
      height: screenHeigth * 0.6,
      child: Card(
        margin: EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(photoProfil),
                      radius: 30,
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(username, style: const TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1, top: 5),
                          child: Text(promotion, style: const TextStyle(fontSize: 10),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1, top: 2),
                          child: Text( datePublication, style: const TextStyle(fontSize: 10),),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.5,),
                    const Padding(
                          padding: EdgeInsets.only(left: 1),
                          child:  Icon(Ionicons.apps),
                        ),
                  ],
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10, left: 20, right: 10),
                    child: Text(Description),
                  ),
              if (image!= null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Image.asset(
                        image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(FontAwesomeIcons.solidHeart, color: Colors.red,),
                        const SizedBox(width: 4.0),
                        Text('$likes'),
                      ],
                    ),
                        Text('$commentaires commentaires', style: const TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 2,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  <Widget>[
                        InkWell(
                          onTap: () {_changeClick();},
                          child: Icon(FontAwesomeIcons.heart, color: click == true? Colors.red : Colors.grey),),
                          
                        const Icon(FontAwesomeIcons.commentDots),

                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}