import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 20, 30, 0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
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
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        "Explore Tasks",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.mark_email_unread_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 40, 30, 0),
            child: Row(
              children: [
                CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 7.0,
                  percent: 0.7,
                  center: const Text(
                    "70%",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                  progressColor: Colors.green,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Task",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Completed",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 40,
                  child: FloatingActionButton.extended(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    label: const Text(
                      'Mar 22',
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: const Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 31,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        shape: BoxShape.rectangle,
                        color: Color(0xff333333)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${index + 1}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Mon",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 36, 30, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Tasks",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "(7/10)Completed",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        CircularPercentIndicator(
                          backgroundColor: Colors.white,
                          radius: 30.0,
                          lineWidth: 7.0,
                          percent: 0.7,
                          center: const Text(
                            "70%",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          progressColor: const Color(0xff6373F7),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Chat Application",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            RichText(
                                text: const TextSpan(
                                    text: 'Over due',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.red),
                                    children: [
                                  TextSpan(
                                    text: ', Mar 13, 2022',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  )
                                ])),
                          ],
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/1_1.png",
                              width: 41.48,
                              height: 40.26,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                              child: Image.asset(
                                "assets/1_2.png",
                                width: 41.48,
                                height: 40.26,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(43, 0, 0, 0),
                              child: Image.asset(
                                "assets/1_3.png",
                                width: 41.48,
                                height: 40.26,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        CircularPercentIndicator(
                          backgroundColor: Colors.white,
                          radius: 30.0,
                          lineWidth: 7.0,
                          percent: 0.8,
                          center: const Text(
                            "80%",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          progressColor: const Color(0xffFEBD93),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "NFT Website",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            RichText(
                                text: const TextSpan(
                                    text: 'Scheduled',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.yellow),
                                    children: [
                                  TextSpan(
                                    text: ', Mar 16, 2022',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  )
                                ])),
                          ],
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/2_1.png",
                              width: 41.48,
                              height: 40.26,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                              child: Image.asset(
                                "assets/2_2.png",
                                width: 41.48,
                                height: 40.26,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        CircularPercentIndicator(
                          backgroundColor: Colors.white,
                          radius: 30.0,
                          lineWidth: 7.0,
                          percent: 0.98,
                          center: const Text(
                            "98%",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          progressColor: const Color(0xff91E0FE),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "NFT Website",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            RichText(
                                text: const TextSpan(
                                    text: 'Completing',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.green),
                                    children: [
                                  TextSpan(
                                    text: ', Mar 16, 2022',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  )
                                ])),
                          ],
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/3_1.png",
                              width: 41.48,
                              height: 40.26,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                              child: Image.asset(
                                "assets/3_2.png",
                                width: 41.48,
                                height: 40.26,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/home.png",
                            height: 22,
                            width: 22,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Image.asset(
                            "assets/Vector.png",
                            height: 22,
                            width: 22,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/chat");
                            },
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Image.asset(
                                  "assets/add.png",
                                  height: 70,
                                  width: 70,
                                ),
                                const Icon(Icons.add),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Image.asset(
                            "assets/bell.png",
                            height: 22,
                            width: 22,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Image.asset(
                            "assets/setting.png",
                            height: 22,
                            width: 22,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
