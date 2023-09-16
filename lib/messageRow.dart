import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  String image;
  String text;
  TextDirection direction ;

   Message ({Key? key, required this.image,required this.text, required this.direction }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: direction,
      children: [
         CircleAvatar(backgroundImage: AssetImage(image),radius: 27,),
        const SizedBox(
          width: 15,
        ),
        Container(
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(border: Border.all(color: Colors.white, ),borderRadius: BorderRadius.circular(50)),
            child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 18),)
        )
      ],
    );
  }
}
