import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create Your \nTasks And \nManage Your \nWork",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        const Icon(
                          size: 10,
                          Icons.circle,
                          color: Colors.grey,
                        ),
                        const Icon(
                          size: 10,
                          Icons.circle,
                          color: Colors.grey,
                        ),
                        const Icon(
                          weight: 20,
                          size: 10,
                          Icons.rectangle,
                          color: Colors.grey,
                        ),
                        const Spacer(),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          label: const Text(
                            "Start",
                            style: TextStyle(fontSize: 20),
                          ),
                          icon: const Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/Rectangle 39497@2x.png",
                      height: 250,
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      child: Image.asset(
                        "assets/Ellipse 76.png",
                        height: 120,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                left: 200,
                top: 100,
                child: Image.asset(
                  "assets/Rectangle 39496.png",
                  height: 150,
                  width: 250,
                ),
              ),
              Positioned(
                top: 240,
                child: Image.asset("assets/Group 37334.png",
                    height: 200, width: 300),
              ),
              Positioned(
                top: 400,
                left: 130,
                child: Image.asset("assets/Group_2 37336.png",
                    height: 200, width: 300),
              ),
            ],
          ),
        ));
  }
}
