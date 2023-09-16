import 'package:flutter/material.dart';

import 'messageRow.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/background.png"),
                fit: BoxFit.cover
              )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("assets/person.jpg"),
                ),
              ),
              Text(
                "Mohamed",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
          actions: const [
            Icon(Icons.call),
            SizedBox(
              width: 12,
            ),
            Icon(Icons.video_call),
            SizedBox(
              width: 12,
            ),
            Icon(Icons.more_vert_rounded),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        body: Column(
          children: [
             Container(
               margin: const EdgeInsets.all(18),
               child: Column(
                 children: [
                   Message(text: "This is my first message", image: "assets/person1.jpg", direction: TextDirection.ltr),
                   const SizedBox(
                     height: 40,
                   ),
                   Message(text: "This is my second message", image: "assets/person2.jpg", direction: TextDirection.rtl),
                 ],
               ),
             ),
             const Spacer(),
             Row(
              children: [
                Expanded(
                  flex: 8,
                    child: TextField(
                       style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                      ),
                       decoration: InputDecoration(
                           hintText: "Type a message",
                           hintStyle: const TextStyle(
                             color: Colors.white,
                             fontSize: 20,
                           ),
                           border: OutlineInputBorder(
                             borderSide: const BorderSide(
                               color: Colors.white
                             ),
                             borderRadius: BorderRadius.circular(30),
                           ),
                           enabledBorder: OutlineInputBorder(
                             borderSide: const BorderSide(
                                 color: Colors.white
                             ),
                             borderRadius: BorderRadius.circular(30),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderSide: const BorderSide(
                                 color: Colors.white
                             ),
                             borderRadius: BorderRadius.circular(30),
                         ),
                           prefixIcon: IconButton(
                             onPressed: (){},
                             icon: const Icon(
                               Icons.emoji_emotions_outlined,
                               color: Colors.white,
                             ),
                           ),
                           suffixIcon: IconButton(
                             onPressed: (){},
                             icon: const Icon(
                               Icons.attach_file,
                               color: Colors.white,
                             ),
                           ),
                       ),
                    ),
                    
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                        Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
