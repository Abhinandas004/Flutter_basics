import 'package:flutter/material.dart';

class FitnessClub extends StatefulWidget {
  const FitnessClub({super.key});

  @override
  State<FitnessClub> createState() => _FitnessClubState();
}

class _FitnessClubState extends State<FitnessClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 365),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://t4.ftcdn.net/jpg/03/34/51/53/360_F_334515316_2EVRXmwTnBXhkjCFGHefImZBiJi38aO1.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "FITNESS CLUB",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(height: 35),
          Text(
            "WELCOME BACK",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 330,
              child: Center(
                child: Text("SIGN IN", style: TextStyle(fontSize: 20)),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 330,
              child: Center(
                child: Text("SIGN UP", style: TextStyle(fontSize: 20)),
              ),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.brown),
              ),
            ),
          ),
          SizedBox(height: 100),
          Text("Login with Social Media"),SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 80),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Google_Plus_logo_%282013-2015%29.svg/1047px-Google_Plus_logo_%282013-2015%29.svg.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          "",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
