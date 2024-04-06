import 'package:flutter/material.dart';
import 'package:flutter_voice_assistant/pallete.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice Assistant'),
        centerTitle: true,
        leading:const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          //virtual assistant profile picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top:4,),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png',
                  ),
                  ),
                ),
              ),
            ],
          ),

          //Chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top:30,
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Pallete.borderColor,
                ),
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.zero,
                )
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical:10.0),
              child: Text(
                'Good Morning, what task can I do for you?',
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10,left:22),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Here are few features!',
              style: const TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Suggestions/Features Lists
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
