import 'package:av_tech_fin/list.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 20, 0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("assets/profile.png"),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Janie!",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Explore Tasks",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        ],
                      )),
                  Spacer(),
                  Icon(
                    Icons.mark_email_unread_rounded,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 20, 0),
              child: Text(
                "Online Members",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 20, 0),
              child: Row(
                children: [
                  SizedBox(
                      height: 70,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Image.asset("assets/add.png"),
                          const Icon(Icons.add),
                        ],
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 80,
                    width: 284,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(imageList[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 15,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 36, 30, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Recent Chat",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                height: 3),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                            child: Image.asset(
                              "assets/archive chat.png",
                              height: 45,
                              width: 130,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/chat_1.png",
                            height: 63,
                            width: 63,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chat Boldwick",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "Sending the file right now",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          const Text(
                            "20 min",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/chat_2.png",
                            height: 63,
                            width: 63,
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Yuri Lorental",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "Can you confirm deadline?",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                          Spacer(),
                          const Text(
                            "20 min",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/chat_3.png",
                            height: 63,
                            width: 63,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Julie Woodland",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "I haven’t completed the work.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green),
                                height: 21,
                                width: 21,
                                child: const Center(
                                    child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                )),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "20 min",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/chat_4.png",
                            height: 63,
                            width: 63,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Erica Yaeger",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "Voice Message (0:23)",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                          Spacer(),
                          const Text(
                            "20 min",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/chat_5.png",
                            height: 63,
                            width: 63,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jung Taekwoon",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "Hello! How is the progress?",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green),
                                    height: 21,
                                    width: 21,
                                    child: const Center(
                                        child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11),
                                    )),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "20 min",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
